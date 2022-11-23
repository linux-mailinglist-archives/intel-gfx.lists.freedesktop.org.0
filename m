Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1D9635544
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 10:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5443410E52C;
	Wed, 23 Nov 2022 09:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6085E10E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 09:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669195088; x=1700731088;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PoxnIa69ijQ4HTiCnANTpZhaMod2xL/9CeAOMVqLOgY=;
 b=YnvUHOFJsTe12/X31E+ptMGmtEAyxRPltH+++mXNYbaXOmlNicAsZTkM
 p7AHC725Gd+fVoKh1W3TYOpfRtNBCN3RNGFLLGYBpoFRXRp3xyuFIUeer
 Ottn5e/YROkgrN0GKrd4VZH1vMIgXYwporophuCW4mdSqB/Zu2URxVSo5
 QCyMcnR8BmEslPya878OvBcp1BOUkSTwbwEMPSlm+YXkOo2+WY9eDyuyf
 4L7SybrfIuBqYPFnd0qIPA2aRkGsj0epG3oryXobFfNiCKFX/wvevYFAP
 Adj0p5kKPxgKVl8SjNSbVUvnSYqI7T9ZNLVwyjXrJlXUzBcTt7U1RpOly A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="311651837"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="311651837"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 01:18:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="619544922"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619544922"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 01:18:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Kees Cook <keescook@chromium.org>
In-Reply-To: <202211222116.5B28E9B8B@keescook>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120948.3436180-1-jani.nikula@intel.com>
 <202211222116.5B28E9B8B@keescook>
Date: Wed, 23 Nov 2022 11:18:02 +0200
Message-ID: <87pmdevxkl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hti: avoid theoretically possible
 negative shift
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 22 Nov 2022, Kees Cook <keescook@chromium.org> wrote:
> On Tue, Nov 22, 2022 at 02:09:48PM +0200, Jani Nikula wrote:
>> If phy is PHY_NONE, the shift to register bits becomes negative. Check
>> and warn about this.
>> 
>> Reported-by: coverity-bot <keescook@chromium.org>
>> References: https://lore.kernel.org/r/202211180848.D39006C@keescook
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
