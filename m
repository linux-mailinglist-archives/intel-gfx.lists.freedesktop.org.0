Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 519574A8CE9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 21:05:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EEED10E301;
	Thu,  3 Feb 2022 20:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CFDD10E301
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 20:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643918754; x=1675454754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qigxRuvRb+cwl8HdmspUmXPeG9B8l8YJK20OYbyKgMk=;
 b=lgiN50+ZH/+Rw9y60IhbKIc5sW33qS/xw7iHSeMbHk/tVdGbGU3Zs0WN
 5dn/WaXJzYG2vK8vIUoT6/jpXsO4kw8G5o1j64dCAcvWnSleQkfjFrF2n
 winVyFVJYYSDNqkZlkzkJHb45GXcZhds+AJ5zv0K3tLuKHsvVtE3YPMee
 vdOqQtYSnOdFgH52yvfXUCqdzf/mAof5eKXSAb4LsXOKFUZbULRx9/XpJ
 zpWQ80Hnx6dpF2jHI05QMgzCNcq6EyOxkPIVwEbysP/npz+Ms/yQr9jX1
 Y09thVrjKFsA0nO6bA4/NJ/JdG9/9OFUiGpy4+KyQDy6t6RQ+cE7Ll8/a g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="228892060"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="228892060"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 12:04:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="524063792"
Received: from ekabir-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.144.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 12:04:55 -0800
Date: Thu, 3 Feb 2022 12:04:53 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <20220203200453.jrxhact4bcmwfpw7@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-2-alan.previn.teres.alexis@intel.com>
 <20220126224619.lyftw7w3okka4lfg@ldmartin-desk2>
 <20220203190324.GA4413@jons-linux-dev-box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220203190324.GA4413@jons-linux-dev-box>
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 03, 2022 at 11:03:24AM -0800, Matthew Brost wrote:
>On Wed, Jan 26, 2022 at 02:46:19PM -0800, Lucas De Marchi wrote:
>> On Wed, Jan 26, 2022 at 02:48:13AM -0800, Alan Previn wrote:
>> > Update GuC ADS size allocation to include space for
>> > the lists of error state capture register descriptors.
>> >
>> > Also, populate the lists of registers we want GuC to report back to
>> > Host on engine reset events. This list should include global,
>> > engine-class and engine-instance registers for every engine-class
>> > type on the current hardware.
>> >
>> > NOTE: Start with a sample table of register lists to layout the
>> > framework before adding real registers in subsequent patch.
>> >
>> > Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> > ---
>>
>> ...
>>
>> > static void __guc_ads_init(struct intel_guc *guc)
>> > {
>> > 	struct intel_gt *gt = guc_to_gt(guc);
>> > @@ -573,9 +553,9 @@ static void __guc_ads_init(struct intel_guc *guc)
>> >
>> > 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
>> >
>> > -	/* Capture list for hang debug */
>> > -	guc_capture_list_init(guc, blob);
>> > -
>> > +	/* Lists for error capture debug */
>> > +	intel_guc_capture_prep_lists(guc, (struct guc_ads *)blob, base,
>>
>> no, please don't cast/export struct guc_ads like this. We can't really
>> dereference it since it may be in IO memory.
>>
>> See https://patchwork.freedesktop.org/series/99378/ with the huge
>> refactor in this file to make it conform to the rules of accessing IO
>> memory.
>>
>> Maybe this list could be appended in the same reglist buffer and we just
>> copy it once to its final location, like we are doing with the reglist?
>>
>
>Agree with Lucas here, let's create the capture list on probe and store
>it somewhere in the device data. On ADS population this more or less
>turns into a memcpy (or after Lucas's series a dma-buf-map call). And on
>fini, just free to stored data. The create capture list IMO is fine to
>be done in an external file and return the data to the ADS code but
>let's make sure everyone is on board with that. Maybe ping Lucas
>directly about this?

yeah, sounds good to me. My worry is exporting ADS struct layout to
other compilation units. Asking for the entire ads blob
(or what would be dma_buf_map in my patches, or iosys_map in the new
version I will send soon) could quickly spread too much knowledge about it to
the rest of the driver.

I think we should at most export the speficic offset inside the buffer
another compilation unit can fill out. In that case with the
iosys_buf API we would return a shallow copy of our guc->ads_map +
offset.

And the other alternative would be as you suggested: save the list in a
temporary buffer and when needed call intel_guc_ads() to populate that
into ads in the right place.

The integration with iosys-map I can figure out if my patch series lands
after this one, or I can help rebasing this otherwise. But IMO we
should not pass the plain blob pointer around regardless of iosys-map.


thanks
Lucas De Marchi

>
>Specific patch Lucas's is referencing:
>https://patchwork.freedesktop.org/patch/471051/?series=99378&rev=1
>
>Matt
>
>> Lucas De Marchi
