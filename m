Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEA5415BEE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 12:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F072D6ED08;
	Thu, 23 Sep 2021 10:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D33BF6ED10
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 10:28:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="223845565"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="223845565"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 03:28:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="550840334"
Received: from lloh-mobl.ger.corp.intel.com (HELO localhost) ([10.249.35.91])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Sep 2021 03:28:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 maarten.lankhorst@linux.intel.com, matthew.d.roper@intel.com
In-Reply-To: <20210923084858.5480-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210923084858.5480-1-stanislav.lisovskiy@intel.com>
Date: Thu, 23 Sep 2021 13:28:21 +0300
Message-ID: <87tuibbn7e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tile F plane format support
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

On Thu, 23 Sep 2021, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> @@ -1941,6 +1951,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			return false;
>  		break;
> +	case I915_FORMAT_MOD_F_TILED:
> +		if (!HAS_FTILE(dev_priv))
> +			return false;
> +		fallthrough;
>  	default:
>  		return false;
>  	}

Seems odd.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
