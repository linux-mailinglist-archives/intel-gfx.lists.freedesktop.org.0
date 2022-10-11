Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C8B5FB15D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 13:20:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E6210E095;
	Tue, 11 Oct 2022 11:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7142610E095
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 11:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665487211; x=1697023211;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=aZLFHgF6r4bOgztLFHdufTETUiIQamsiUDovBPow5+c=;
 b=UYte9QQdTgd2//rjz8G2oi9Zk1J5LwpvDKmGmA0vzQOBjYEEKnrKnPQa
 AxHq0bsJg0scKFMpj7kp0AO6E8I1RoO8Sqci/qbDt3pF5F7JcWdPTsLyY
 NY+4dBrtl8I2SWB30g56WGBdBOSgslJR0gIn8DvCR4FtpLvoObUwO1ToK
 QwzOx3D9SRrgDIGsWrN/QzVyzMzuPApC5kgFsNYGXp378AMMCLWszJR7P
 xS9gngn3zt4Qeu9ZxBwisjmEQ2jbdzuGnfx4sCcrlFf74c+Fo/8h7tro0
 A+U4uK1yXhqHNXrMZfcgZAHyDJg0YeAQmyTrASsZho4JmxiNo/5SAG8f9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302086637"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302086637"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 04:19:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="871471989"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="871471989"
Received: from mhartiga-mobl.ger.corp.intel.com (HELO [10.213.228.219])
 ([10.213.228.219])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 04:19:56 -0700
Message-ID: <0f10a183-d86b-8ec7-8ce1-368c8bd25123@linux.intel.com>
Date: Tue, 11 Oct 2022 12:19:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <Yz8FHapUF8BD7kkw@intel.com>
 <20221006204844.2831303-1-andrzej.hajda@intel.com>
 <Y0QswEzRwwv9Vops@ashyti-mobl2.lan> <Y0VAyikdFVTl0YhX@ashyti-mobl2.lan>
 <87h70ay8fr.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87h70ay8fr.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915/display: remove drm_device
 aliases
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
Cc: Ville Syrjala <ville.syrjala@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/10/2022 11:13, Jani Nikula wrote:
> On Tue, 11 Oct 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> On Mon, Oct 10, 2022 at 04:31:28PM +0200, Andi Shyti wrote:
>>> On Thu, Oct 06, 2022 at 10:48:44PM +0200, Andrzej Hajda wrote:
>>>> drm_device pointers are unwelcome.
>>>>
>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>
>>> Acked-by: Andi Shyti <andi.shyti@linux.intel.com>
>>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>
>> Only this first patch is strictly related to display, I'm taking
>> the series in intel-gt-next. Anyone against?
> 
> Absolutely against. That logic is backwards.
> 
> drm-intel-gt-next is for stuff that's strictly about gt/gem. Everything
> else, especially stuff touching common code, needs to go through
> drm-intel-next.
> 
> There's nothing here that's gt/gem specific.

Glanced over the series and although there are a few bits which are not 
about display, it does seem majority is either display or common code so 
I agree it should all go in via drm-intel-next.

Regards,

Tvrtko
