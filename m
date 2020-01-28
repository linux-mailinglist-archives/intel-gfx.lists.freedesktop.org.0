Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 215F214B829
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1616EE5B;
	Tue, 28 Jan 2020 14:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D838F6EE5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:21:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 06:21:52 -0800
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="217625197"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 06:21:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <878slrd5mh.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200128135425.14596-1-anshuman.gupta@intel.com>
 <20200128135425.14596-3-anshuman.gupta@intel.com> <878slrd5mh.fsf@intel.com>
Date: Tue, 28 Jan 2020 16:21:48 +0200
Message-ID: <874kwfd5kz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: HDCP support on above PORT_E
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Jan 2020, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 28 Jan 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
>> As Gen12 onwards there are HDCP instances for each transcoder
>> instead of port, remove the (port >=PORT_E) hdcp support
>> limitation.
>>
>> CC: Ramalingam C <ramalingam.c@intel.com>
>> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index be083136eee2..d3a1dd791ff9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -922,7 +922,8 @@ static void intel_hdcp_prop_work(struct work_struct *work)
>>  bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
>>  {
>>  	/* PORT E doesn't have HDCP, and PORT F is disabled */

PS. It's probably best to nuke the comment.

>> -	return INTEL_INFO(dev_priv)->display.has_hdcp && port < PORT_E;
>> +	return INTEL_INFO(dev_priv)->display.has_hdcp &&
>> +		((INTEL_GEN(dev_priv) >= 12) || port < PORT_E);
>
> Superfluous braces around (INTEL_GEN(dev_priv) >= 12).
>
> BR,
> Jani.
>
>>  }
>>  
>>  static int

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
