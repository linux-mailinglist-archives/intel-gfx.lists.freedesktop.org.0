Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5120E609E22
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 11:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66CE10E312;
	Mon, 24 Oct 2022 09:38:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB41A10E303
 for <Intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 09:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666604305; x=1698140305;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=3RFA1zi3CCwn+riMsc01Sl5+OS21GH+rHHKJP41KB+M=;
 b=LrzkrC9UpNgf+eMN3LIl/d5x1AT4nFYOMwOXS4WKZvSC6680mrWcjFlS
 RsB+T2CpWM63vSe+VR3XFZjaWrg3cNiG+Knt6oX5izn0wCW/Ej5pur/0n
 XuTpDSarUKMqDA0g8+uc4HTNLJHdrlmhNzVUM36eNvc0tsV7Lu/PsYJE7
 4y8ueRou/j7FFrt+Fs7cId6n3pu4QiM+6W1uWR1f38yYkVrotPdxd24gP
 w8xPavmwLTjRwSSfx8b4z0psIJbsGb80FP8XtoomVNfsXZAfMFG27HsL+
 1/bexeVKgyucOtTyGAvi0NrSLbmK/BQbiYI+KWrBbViYk5+VqTdIBRBWV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="306109524"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="306109524"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 02:38:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="662379833"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="662379833"
Received: from emontau-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.221])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 02:38:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <877d0tfpej.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
 <877d0tfpej.fsf@intel.com>
Date: Mon, 24 Oct 2022 12:38:20 +0300
Message-ID: <87zgdlef3n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: SPD infoframe updated for
 discrete
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

On Fri, 21 Oct 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 19 Oct 2022, "Taylor, Clinton A" <clinton.a.taylor@intel.com> wrote:
>> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>
> Always struct drm_i915_private *i915 for new code please.

Also for v2.

-- 
Jani Nikula, Intel Open Source Graphics Center
