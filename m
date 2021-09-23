Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F38415D12
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C246E0D4;
	Thu, 23 Sep 2021 11:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AEC6E0D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 11:50:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="223856861"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="223856861"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 04:50:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="550901492"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 04:50:45 -0700
Date: Thu, 23 Sep 2021 14:51:37 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 maarten.lankhorst@linux.intel.com, matthew.d.roper@intel.com
Message-ID: <20210923115137.GA5962@intel.com>
References: <20210923084858.5480-1-stanislav.lisovskiy@intel.com>
 <87tuibbn7e.fsf@intel.com> <20210923104411.GA5676@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210923104411.GA5676@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Thu, Sep 23, 2021 at 01:44:11PM +0300, Lisovskiy, Stanislav wrote:
> On Thu, Sep 23, 2021 at 01:28:21PM +0300, Jani Nikula wrote:
> > On Thu, 23 Sep 2021, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > > @@ -1941,6 +1951,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> > >  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > >  			return false;
> > >  		break;
> > > +	case I915_FORMAT_MOD_F_TILED:
> > > +		if (!HAS_FTILE(dev_priv))
> > > +			return false;
> > > +		fallthrough;
> > >  	default:
> > >  		return false;
> > >  	}
> > 
> > Seems odd.
> 
> I agree, however this wasn't even added by me.
> This patch got changed in ridiculous ways since last time,
> I ever touched it. 
> Currently we have it internally exactly same way(wondering why)
> Unfortunately didn't pay attention to this, was assuming
> that if its r-bed and pushed - can trust it.

Actually checked - seems to be result of wrong merge conflict resolution
by me.

It was initially that way:

-	case DRM_FORMAT_MOD_LINEAR:
-	case I915_FORMAT_MOD_X_TILED:
-		break;
 	case I915_FORMAT_MOD_Y_TILED:
 		if (IS_DG2(dev_priv))
 			return false;
@@ -1928,6 +1934,13 @@  static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 		if (IS_DG2(dev_priv))
 			return false;
 		break;
+	case I915_FORMAT_MOD_F_TILED:
+		if (!HAS_FTILE(dev_priv))
+			return false;
+		fallthrough;
+	case DRM_FORMAT_MOD_LINEAR:
+	case I915_FORMAT_MOD_X_TILED:
+		break;

So my bad here. Need to put this back.

Stan


> 
> Stan
> 
> 
> > 
> > BR,
> > Jani.
> > 
> > 
> > -- 
> > Jani Nikula, Intel Open Source Graphics Center
