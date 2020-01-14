Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E666513A5C1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 11:21:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885836E34C;
	Tue, 14 Jan 2020 10:21:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9F66E34C;
 Tue, 14 Jan 2020 10:21:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 02:21:34 -0800
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="213290357"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO [10.252.23.174])
 ([10.252.23.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Jan 2020 02:21:33 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200110115320.1284901-1-chris@chris-wilson.co.uk>
 <06e82c0a-3752-6d30-0aa0-0bb9993b5bae@linux.intel.com>
 <157899692591.27314.10652294075559860834@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <831fd3bf-031d-5b0a-ae73-6fc1ffa6051d@linux.intel.com>
Date: Tue, 14 Jan 2020 10:21:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157899692591.27314.10652294075559860834@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] i915/perf: Find the
 associated perf-type for a particular device
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/01/2020 10:15, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-14 10:09:15)
>>
>> On 10/01/2020 11:53, Chris Wilson wrote:
>>> -uint64_t i915_type_id(void)
>>> +static char *bus_address(int i915, char *path, int pathlen)
>>> +{
>>> +     struct stat st;
>>> +     int len = -1;
>>> +     int dir;
>>> +     char *s;
>>> +
>>> +     if (fstat(i915, &st) || !S_ISCHR(st.st_mode))
>>> +             return NULL;
>>> +
>>> +     snprintf(path, pathlen, "/sys/dev/char/%d:%d",
>>> +              major(st.st_rdev), minor(st.st_rdev));
>>> +
>>> +     dir = open(path, O_RDONLY);
>>> +     if (dir != -1) {
>>> +             len = readlinkat(dir, "device", path, pathlen - 1);
>>> +             close(dir);
>>> +     }
>>> +     if (len < 0)
>>> +             return NULL;
>>> +
>>> +     path[len] = '\0';
>>
>> In the realm of hypothetical but an assert that no truncation occurred
>> would be good.
>>
>> if (len == pathlen - 1)
>>          return NULL;
>>
>> ?
>>
>> Although it is not clear to me from man readlinkat how do we distinguish
>> between truncation and exact fit.
>>
>> Or you were counting on failure at a later step if truncation occurred?
> 
> I did not expect a partial match to ever succeed. We at least know for
> the moment the names are fixed.
> 
>> Maybe try stat(2) in this wrapper to be sure function returns a valid path?
> 
> That would have the same danger of a partial match.

True, it would need more string validation - that the returned string 
matches the PCI bus address format of xxxx:yy:zz. Failure at a later 
step works for now I guess.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

> I think the foolproof solution here is having pmu_name in
> /sys/class/drm/cardN/pmu_name. (Or rather
> /sys/dev/char/%d:%d/device/pnu_name. :)

True.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
