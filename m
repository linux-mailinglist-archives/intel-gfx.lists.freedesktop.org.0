Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9339021A879
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 22:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47F36EB26;
	Thu,  9 Jul 2020 20:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C9AD6EB26
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 20:02:01 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id f139so3148094wmf.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 13:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kVP1CHBq2hc6XgN2w9Fi8B/Gr8HW3vNWYUCq2W57fy8=;
 b=dmjUCTiLPAagdjW6MV70uy+nTAuBSkzsA/nGqoFuQ5++EqwDWh4qRJvzcQXWfIqYG5
 8EEVz/IfYcT4/+/a9AekpsUHzo/FxTEVO/waD5z0fBnvOGU1vZ6OqNzD95cMY3K+cyh7
 aqLrTPxfyaiMXrFjg/bsDG5hmtSffkns2VSJepa5do5WJ5ZJWoTPviKR90a1sTbgmKrW
 qcV5TMCNWbajL+HA+UqeSbZD1YejeAFQR6lc5qg+vyfWGWwSmhbHlMVRVwrZCBGIxx2Q
 6i3tk5nBisWvWpBBB35RSEqHMI58ouFmDEljyKWf6bRYgLXOR9WYWMsePYW930xaZP0t
 W4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kVP1CHBq2hc6XgN2w9Fi8B/Gr8HW3vNWYUCq2W57fy8=;
 b=a1K3du+RrIo5MGneubw0dRrwyHDlIk2NiV3pF249H1FY1kd39MlHMkN4owG/n1PYuu
 HoWiwFISbB6QbKx4C4KSv6aDdR9Pppheweslqo4nr28LOVIis3xzeltHJtlOmajkJYYg
 yGEncWDxWPUsOkxYAEN3t+2iNTdvsd9nhHMJB1i6vT/5+7MY8fTW+i2XqvI+AE0eRfZl
 tIIWTBU0P5H61Qswg2CHVUr9uCxRT73+D4M/vbdkleA3jyJJHmRPcD204l44BXUF2uEF
 U3TV0USsikACRoYEvlJ3O0ZAqtB6HrzL4KMOnGW3oa+9KHlPmLxvoeE8APqoKdDcMDgW
 6CRw==
X-Gm-Message-State: AOAM531X+O9WxgUl8+KAj8d9Gcvp7GZCEd8ULCM7GXf0zDF+PAmaO3bV
 sh8hpPKpuMqkNZ1uNWSvrzciSrID+DQYtOlCPdc=
X-Google-Smtp-Source: ABdhPJw9dOrzE2Ra6wdjAQIYzFS6oI4VwaHQ/FHUm5AxzVBMKaN4DKiHz5s883N2dcCJfaTxwe/jVIlfk+yir/d9GAk=
X-Received: by 2002:a7b:c007:: with SMTP id c7mr1601873wmb.165.1594324920224; 
 Thu, 09 Jul 2020 13:02:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200701235339.32608-4-lucas.demarchi@intel.com>
 <202007021357.nFzJVY4b%lkp@intel.com>
In-Reply-To: <202007021357.nFzJVY4b%lkp@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 9 Jul 2020 13:01:47 -0700
Message-ID: <CAKi4VAJOoR5otTrBkCeGRaMsnhDdjmvP0fwpNzRWb==QzSXa+w@mail.gmail.com>
To: kernel test robot <lkp@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 03/28] drm/i915/dg1: Add DG1 PCI IDs
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
Cc: kbuild-all@lists.01.org, Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 1, 2020 at 11:01 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Lucas,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on drm-intel/for-linux-next]
> [also build test ERROR on drm-tip/drm-tip next-20200701]
> [cannot apply to v5.8-rc3]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Lucas-De-Marchi/Introduce-DG1/20200702-075819
> base:   git://anongit.freedesktop.org/drm-intel for-linux-next
> config: i386-randconfig-m021-20200701 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-14) 9.3.0
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/gpu/drm/i915/i915_pci.c:903:39: error: 'dg1_info' defined but not used [-Werror=unused-const-variable=]
>      903 | static const struct intel_device_info dg1_info = {
>          |                                       ^~~~~~~~

This is intentionally left unused. Wonder what the fix would be...
__attribute__(__unused__) or force the warning
to be ignored here

with or without this change I don't get a warning in  gcc 10 (using
the same config attached).

Lucas De Marchi

>    cc1: all warnings being treated as errors
>
> vim +/dg1_info +903 drivers/gpu/drm/i915/i915_pci.c
>
>    896
>    897  #define GEN12_DGFX_FEATURES \
>    898          GEN12_FEATURES, \
>    899          .memory_regions = REGION_SMEM | REGION_LMEM, \
>    900          .has_master_unit_irq = 1, \
>    901          .is_dgfx = 1
>    902
>  > 903  static const struct intel_device_info dg1_info = {
>    904          GEN12_DGFX_FEATURES,
>    905          PLATFORM(INTEL_DG1),
>    906          .pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
>    907          .require_force_probe = 1,
>    908          .engine_mask =
>    909                  BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
>    910                  BIT(VCS0) | BIT(VCS2),
>    911  };
>    912
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
