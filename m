Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DC8557565
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 10:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E72C11A221;
	Thu, 23 Jun 2022 08:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376A811A21B;
 Thu, 23 Jun 2022 08:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655972790; x=1687508790;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hUug6ANGr2vBE5p5HQq8nqcE2SAPKw5UtqCCNLq92hE=;
 b=GlRetDHvHc56JMPPszWCNLcB9MqnOJqp0KEPSbfd3S7jT5USxlT2Nib9
 Y0lNsD47ll9U2XsVgP5zl9imwVuK+W28rdY86vBJ0qFFNXnCnAexyZXiy
 /vvC+ZZon2kAk46ODDRAkFrg9HbXQToiEvuCUzfKlkTpNkwdZ73lpvr9y
 4U5Ub4c9Pa9/PSHh4G6//yiIMU4xxHgkXNA8im+FLc6BlmXnb2PPCJYkF
 A5+44gA9clx0nt/5u9krg0GwWgwLRTE8vH4UhWAx9X57ewPSOmHGLfGX6
 w9Xe47xKkZ+PiuXJgzkArO4wOG1AKisa8Ku+Lixa3tswCRzpLhw4534J9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="366980467"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="366980467"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 01:26:29 -0700
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="592601872"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.61.112])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 01:26:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <a3bf32dc-bcae-496c-0c3a-5fe5c5c89c3f@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <YrQeAAVvQ6jxu2dl@linux-uq9g>
 <a3bf32dc-bcae-496c-0c3a-5fe5c5c89c3f@suse.de>
Date: Thu, 23 Jun 2022 11:26:22 +0300
Message-ID: <87r13frdjl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 23 Jun 2022, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> I forgot to mention that we backmerged v5.19-rc2. That's why the list of 
> changed files is so long.

I thought we should only backmerge Linus' tree via backmerging drm-next,
which avoids this problem altogether.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
