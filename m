Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF62745DBEE
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 15:06:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE4D06EE42;
	Thu, 25 Nov 2021 14:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECC2D6EE38
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 14:06:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="235460365"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="235460365"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 06:06:43 -0800
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="510318029"
Received: from dlathrox-mobl1.amr.corp.intel.com (HELO [10.212.122.191])
 ([10.212.122.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 06:06:40 -0800
Message-ID: <91e37161-7148-5d71-2efa-0176fbe2f468@linux.intel.com>
Date: Thu, 25 Nov 2021 14:06:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-12-ville.syrjala@linux.intel.com>
 <87pmqplft3.fsf@intel.com> <YZ9azCw2Rc96QuNL@intel.com>
 <87bl28lcyw.fsf@intel.com> <YZ991bmhNaIj4MrQ@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YZ991bmhNaIj4MrQ@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915/fbc: Move FBC debugfs stuff
 into intel_fbc.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/11/2021 12:13, Ville Syrjälä wrote:
> On Thu, Nov 25, 2021 at 12:57:27PM +0200, Jani Nikula wrote:
>> On Thu, 25 Nov 2021, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>>> On Wed, Nov 24, 2021 at 05:43:52PM +0200, Jani Nikula wrote:
>>>> On Wed, 24 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>>>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>>
>>>>> In order to encapsulate FBC harder let's just move the debugfs
>>>>> stuff into intel_fbc.c.
>>>>
>>>> Mmmh, I've kind of moved towards a split where i915_debugfs.c and
>>>> intel_display_debugfs.c have all the debugfs boilerplate, while the
>>>> implementation files have the guts with struct drm_i915_private *i915
>>>> (or something more specific) and struct seq_file *m passed in.
>>>>
>>>> In some ways the split is arbitrary, but I kind of find the debugfs
>>>> boilerplate a distraction in the implementation files, and we also skip
>>>> building the debugfs files completely for CONFIG_DEBUG_FS=n. I don't
>>>> think I'd want to add #ifdefs on that spread around either.
>>>
>>> If we want to keep the debugfs in a separate file then we'll have to
>>> expose the guts of the FBC implementation in intel_fbc.h (or some other
>>> header) just for that, or we add a whole bunch of otherwise useless
>>> functions that pretend to provide some higher level of abstraction.
>>>
>>> Not really a fan of either of those options.
>>
>> Obviously I'm in favour of hiding the guts, no question about it. I'm
>> also very much in favour of moving the details out of our *debugfs.c
>> files. It's just a question of where to draw the line, and which side of
>> the line the debugfs boilerplate lands.
>>
>> Which leaves us either your approach in the patch at hand, or adding the
>> fbc helper functions for debugfs, which would be something like:
>>
>> intel_fbc_get_status
>> intel_fbc_get_false_color
>> intel_fbc_set_false_color
> 
> So I guess you're suggesting that just the DEFINE_ATTRIBUTE
> and debugfs_create_file() stuff should remain in
> intel_display_debugfs.c?
> 
> Not sure that approach has any benefits whatsoever. The get/set
> functions will need to be non-static and they'll get included in
> the binary whether or not debugfs is enabled or not (unless you
> lto it perhaps). If everything is in intel_fbc.c all that stuff
> just gets optimized out entirely when not needed.
> 
> Also then I couldn't do this sort of stuff:
>   if (fbc->funcs->set_false_color)
>   	debugfs_create_file(...)
> because that requires knowledge only available to intel_fbc.c.
> I'd need to add some kind of intel_fbc_has_false_color() thing
> just for that.

Not guaranteeing I captured all the nuances here but how about an 
approach similar to selftests? That is, have a separate file for debugfs 
registration and bits (each "module" explicitly registers as in Ville's 
patch), and have the owning "module" include the debugfs part at the end 
of it. That way no exports, or defining too much API, would be needed. 
And not needing common debugfs code to know the guts of any module. 
Benefit of not compiling any of it when !CONFIG_DEBUG_FS is kept (or 
gained, not even sure any more..).

Regards,

Tvrtko
