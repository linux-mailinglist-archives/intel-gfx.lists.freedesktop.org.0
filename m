Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FBD4F9F08
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 23:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2FD10F16A;
	Fri,  8 Apr 2022 21:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D23E10F16A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 21:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649452615; x=1680988615;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=BZykVQa1P9ndM99HI5QHpZVhmDfDfP8IBPIV7zOJQuQ=;
 b=DeZfs7qUux+ToGNuyoTQe8uwOTSIQVfvBdOR8P04b4SqCy/o6Bdv1v5d
 mkY1i+Ej2VB7xD2d/JtWzJA5EhaMlFC93t9uM8vd3XWBGivFzW4qNteD6
 3hiIHY7StbyqiDCwJJ9hbYeusSwNqzSOIWNjsC8y4B+JGBmhm/zsLnyGf
 J3GtuNymt9BfnZupJianu5MZncoOj82Ij/U9VjEZWXfACI2Ks48H3QC8A
 yLWqnO8kj3hX8k78qCtQ016sFQJ9oEvvAD4SJKJl16rFFabXV2lGZFYMQ
 Cu3NSfDRm5/rbSiMkTvtmecAZiOYVpK2jws7NIzf6qivebRUfZmAbJiLK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10311"; a="261373091"
X-IronPort-AV: E=Sophos;i="5.90,246,1643702400"; d="scan'208";a="261373091"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 14:16:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,246,1643702400"; d="scan'208";a="550657988"
Received: from vjuntune-mobl1.ger.corp.intel.com (HELO [10.252.43.29])
 ([10.252.43.29])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 14:16:53 -0700
Message-ID: <1eb2fa13-acc6-f428-bf14-ebb1d1e2a723@linux.intel.com>
Date: Fri, 8 Apr 2022 23:16:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: juhapekka.heikkila@gmail.com, intel-gfx@lists.freedesktop.org,
 Imre Deak <imre.deak@intel.com>
References: <20220404133846.131401-1-imre.deak@intel.com>
 <20220404133846.131401-4-imre.deak@intel.com>
 <d552242f-a29b-d77a-b551-f5f9ffe0ca8d@gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <d552242f-a29b-d77a-b551-f5f9ffe0ca8d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/fourcc: Introduce format modifier
 for DG2 clear color
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 07-04-2022 om 15:37 schreef Juha-Pekka Heikkila:
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>
> On 4.4.2022 16.38, Imre Deak wrote:
>> From: Mika Kahola <mika.kahola@intel.com>
>>
>> DG2 clear color render compression uses Tile4 layout. Therefore, we need
>> to define a new format modifier for uAPI to support clear color rendering.
>>
>> v2:
>>    Display version is fixed. [Imre]
>>    KDoc is enhanced for cc modifier. [Nanley & Lionel]
>> v3:
>>    Split out the modifier addition to a separate patch.
>>    Clarify the modifier layout description.
>>
>> Cc: dri-devel@lists.freedesktop.org
>> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> cc: Anshuman Gupta <anshuman.gupta@intel.com>
>> Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
>> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>> Acked-by: Nanley Chery <nanley.g.chery@intel.com>
>> ---
>>   include/uapi/drm/drm_fourcc.h | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
>> index 4a5117715db3c..e5074162bcdd4 100644
>> --- a/include/uapi/drm/drm_fourcc.h
>> +++ b/include/uapi/drm/drm_fourcc.h
>> @@ -605,6 +605,20 @@ extern "C" {
>>    */
>>   #define I915_FORMAT_MOD_4_TILED_DG2_MC_CCS fourcc_mod_code(INTEL, 11)
>>   +/*
>> + * Intel Color Control Surface with Clear Color (CCS) for DG2 render compression.
>> + *
>> + * The main surface is Tile 4 and at plane index 0. The CCS data is stored
>> + * outside of the GEM object in a reserved memory area dedicated for the
>> + * storage of the CCS data for all RC/RC_CC/MC compressible GEM objects. The
>> + * main surface pitch is required to be a multiple of four Tile 4 widths. The
>> + * clear color is stored at plane index 1 and the pitch should be ignored. The
>> + * format of the 256 bits of clear color data matches the one used for the
>> + * I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC modifier, see its description
>> + * for details.
>> + */
>> +#define I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC fourcc_mod_code(INTEL, 12)
>> +
>>   /*
>>    * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>>    *
>
I personally think it's not required since it's a i915 only format), but for merging series through drm-intel:

Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

