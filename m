Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3A84F5BC7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 12:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2482610E21E;
	Wed,  6 Apr 2022 10:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB9510E297
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 10:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649242410; x=1680778410;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=tjJtJeahqMvp5YDQdFeO9naM1eaXLDQX7imxe9Tc9Go=;
 b=NCVrmVZG/4gX4lBRWv+JHtoqHNJc/RcNNQZpjMa6juePmeTA6uH62qAr
 zCedP9KeC7cqKpjXZHBB1hC4Now+rAoy55b213fEkNX1o1MK1O+1pt0Y6
 wtaJtlpQjwt/ayodFSCT7XslccksA8C67CIuoRbNFLnHZ9iEWJRM9ySJc
 sBKGFoRjyFOv84m3oczm0VB+34M9+EUFPnWKgPvlHQy81HDpI/3CUwubd
 gwF5hmbgh8KoO5QsYd+9+TAh+DtclRG1wy98CKKhjFMK3VVDBe8k+0ZFD
 weHvZ5pwr3+Ywe6ft8RslBpXxpGP1q+u3Kx9tqxY4eg+rK/OaO8feovqD A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="285982358"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="285982358"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 03:53:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="523879612"
Received: from aghafar1-mobl2.ger.corp.intel.com (HELO [10.213.220.12])
 ([10.213.220.12])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 03:53:29 -0700
Message-ID: <9c9b718e-93cb-4917-1c65-49409f807db4@linux.intel.com>
Date: Wed, 6 Apr 2022 11:53:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220314161310.6468-1-ashutosh.dixit@intel.com>
 <164730225925.20566.17531303135087855022@emeril.freedesktop.org>
 <20220406103607.GF22062@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220406103607.GF22062@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Drop_redundant_IS=5FVALLEYVIEW_check_in_=5F=5Fget?=
 =?utf-8?b?X3JjNigpIChyZXYyKQ==?=
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


On 06/04/2022 11:36, Anshuman Gupta wrote:
> On 2022-03-15 at 05:27:39 +0530, Patchwork wrote:
> Pushed to drm-intel-next.
> Thanks for review and patch.

Probably better if went through drm-intel-gt-next (not the files it 
touches are mostly in gt/ and registers have GT in their names, and RC6 
is obviously a render thing) but it's fine, small so no harm done, just 
note for the future please.

Regards,

Tvrtko

> Anshuman Gupta.
>>     Patch Details
>>
>>     Series: drm/i915/pmu: Drop redundant IS_VALLEYVIEW check in __get_rc6()
>>     (rev2)
>>     URL: [1]https://patchwork.freedesktop.org/series/101301/
>>     State: success
>>     Details:
>>     [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/index.html
>>
>>        CI Bug Log - changes from CI_DRM_11360_full -> Patchwork_22559_full
>>
>> Summary
>>
>>     SUCCESS
>>
>>     No regressions found.
>>
>> Participating hosts (13 -> 13)
>>
>>     No changes in participating hosts
>>
>> Known issues
>>
>>     Here are the changes found in Patchwork_22559_full that come from known
>>     issues:
>>
>>    CI changes
>>
>>      Possible fixes
>>
>>       * boot:
>>            + shard-glk: ([3]PASS, [4]PASS, [5]PASS, [6]PASS, [7]PASS,
>>              [8]FAIL, [9]PASS, [10]PASS, [11]PASS, [12]PASS, [13]PASS,
>>              [14]FAIL, [15]PASS, [16]PASS, [17]PASS, [18]PASS, [19]PASS,
>>              [20]PASS, [21]PASS, [22]PASS, [23]PASS, [24]PASS, [25]PASS,
>>              [26]PASS, [27]PASS) ([i915#4392]) -> ([28]PASS, [29]PASS,
>>              [30]PASS, [31]PASS, [32]PASS, [33]PASS, [34]PASS, [35]PASS,
>>              [36]PASS, [37]PASS, [38]PASS, [39]PASS, [40]PASS, [41]PASS,
>>              [42]PASS, [43]PASS, [44]PASS, [45]PASS, [46]PASS, [47]PASS,
>>              [48]PASS, [49]PASS, [50]PASS, [51]PASS, [52]PASS)
>>
>>    IGT changes
>>
>>      Issues hit
>>
>>       * igt@gem_ccs@block-copy-compressed:
>>            + shard-tglb: NOTRUN -> [53]SKIP ([i915#5325])
>>       * igt@gem_create@create-massive:
>>            + shard-skl: NOTRUN -> [54]DMESG-WARN ([i915#4991])
>>       * igt@gem_exec_balancer@parallel-balancer:
>>            + shard-iclb: [55]PASS -> [56]SKIP ([i915#4525])
>>       * igt@gem_exec_fair@basic-none-rrul@rcs0:
>>            + shard-tglb: [57]PASS -> [58]FAIL ([i915#2842]) +1 similar
>>              issue
>>       * igt@gem_exec_fair@basic-none-share@rcs0:
>>            + shard-iclb: [59]PASS -> [60]FAIL ([i915#2842])
>>       * igt@gem_exec_fair@basic-none@vecs0:
>>            + shard-apl: [61]PASS -> [62]FAIL ([i915#2842])
>>       * igt@gem_exec_fair@basic-pace@vcs1:
>>            + shard-kbl: [63]PASS -> [64]FAIL ([i915#2842]) +1 similar issue
>>       * igt@gem_exec_whisper@basic-queues-forked-all:
>>            + shard-glk: [65]PASS -> [66]DMESG-WARN ([i915#118])
>>       * igt@gem_huc_copy@huc-copy:
>>            + shard-glk: NOTRUN -> [67]SKIP ([fdo#109271] / [i915#2190])
>>       * igt@gem_lmem_swapping@parallel-random:
>>            + shard-iclb: NOTRUN -> [68]SKIP ([i915#4613])
>>       * igt@gem_lmem_swapping@parallel-random-engines:
>>            + shard-glk: NOTRUN -> [69]SKIP ([fdo#109271] / [i915#4613])
>>       * igt@gem_lmem_swapping@random:
>>            + shard-apl: NOTRUN -> [70]SKIP ([fdo#109271] / [i915#4613]) +1
>>              similar issue
>>       * igt@gem_lmem_swapping@random-engines:
>>            + shard-skl: NOTRUN -> [71]SKIP ([fdo#109271] / [i915#4613]) +3
>>              similar issues
>>       * igt@gem_pread@exhaustion:
>>            + shard-skl: NOTRUN -> [72]WARN ([i915#2658])
>>       * igt@gem_pxp@create-protected-buffer:
>>            + shard-iclb: NOTRUN -> [73]SKIP ([i915#4270])
>>       * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>>            + shard-iclb: NOTRUN -> [74]SKIP ([i915#768])
>>       * igt@gem_userptr_blits@input-checking:
>>            + shard-iclb: NOTRUN -> [75]DMESG-WARN ([i915#4991])
>>       * igt@gem_userptr_blits@unsync-unmap:
>>            + shard-tglb: NOTRUN -> [76]SKIP ([i915#3297])
>>       * igt@gen7_exec_parse@oacontrol-tracking:
>>            + shard-iclb: NOTRUN -> [77]SKIP ([fdo#109289]) +1 similar issue
>>       * igt@gen9_exec_parse@allowed-all:
>>            + shard-glk: [78]PASS -> [79]DMESG-WARN ([i915#1436] /
>>              [i915#716])
>>       * igt@i915_module_load@reload-with-fault-injection:
>>            + shard-skl: NOTRUN -> [80]DMESG-WARN ([i915#1982])
>>       * igt@i915_pm_dc@dc6-dpms:
>>            + shard-skl: NOTRUN -> [81]FAIL ([i915#454]) +1 similar issue
>>       * igt@i915_pm_rpm@modeset-lpsp-stress:
>>            + shard-apl: NOTRUN -> [82]SKIP ([fdo#109271]) +114 similar
>>              issues
>>       * igt@i915_suspend@fence-restore-untiled:
>>            + shard-tglb: [83]PASS -> [84]DMESG-WARN ([i915#2411] /
>>              [i915#2867])
>>       * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>>            + shard-iclb: NOTRUN -> [85]SKIP ([i915#5286]) +1 similar issue
>>       * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>>            + shard-apl: NOTRUN -> [86]SKIP ([fdo#109271] / [i915#3777]) +2
>>              similar issues
>>       * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-fli
>>         p:
>>            + shard-skl: NOTRUN -> [87]SKIP ([fdo#109271] / [i915#3777]) +7
>>              similar issues
>>       * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>>            + shard-kbl: NOTRUN -> [88]SKIP ([fdo#109271]) +3 similar issues
>>       * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>>            + shard-glk: NOTRUN -> [89]SKIP ([fdo#109271] / [i915#3777]) +1
>>              similar issue
>>       * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>>            + shard-glk: NOTRUN -> [90]SKIP ([fdo#109271] / [i915#3886]) +5
>>              similar issues
>>       * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>>            + shard-apl: NOTRUN -> [91]SKIP ([fdo#109271] / [i915#3886]) +4
>>              similar issues
>>       * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>>            + shard-skl: NOTRUN -> [92]SKIP ([fdo#109271] / [i915#3886]) +11
>>              similar issues
>>       * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>>            + shard-iclb: NOTRUN -> [93]SKIP ([fdo#109278] / [i915#3886]) +2
>>              similar issues
>>       * igt@kms_chamelium@dp-crc-multiple:
>>            + shard-apl: NOTRUN -> [94]SKIP ([fdo#109271] / [fdo#111827]) +7
>>              similar issues
>>       * igt@kms_color@pipe-d-ctm-blue-to-red:
>>            + shard-iclb: NOTRUN -> [95]SKIP ([fdo#109278] / [i915#1149])
>>       * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>>            + shard-glk: NOTRUN -> [96]SKIP ([fdo#109271] / [fdo#111827]) +5
>>              similar issues
>>       * igt@kms_color_chamelium@pipe-a-degamma:
>>            + shard-iclb: NOTRUN -> [97]SKIP ([fdo#109284] / [fdo#111827])
>>              +1 similar issue
>>       * igt@kms_color_chamelium@pipe-b-ctm-max:
>>            + shard-skl: NOTRUN -> [98]SKIP ([fdo#109271] / [fdo#111827])
>>              +25 similar issues
>>       * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>>            + shard-iclb: NOTRUN -> [99]SKIP ([fdo#109278] / [fdo#109284] /
>>              [fdo#111827])
>>       * igt@kms_content_protection@atomic-dpms:
>>            + shard-apl: NOTRUN -> [100]TIMEOUT ([i915#1319])
>>       * igt@kms_content_protection@dp-mst-type-1:
>>            + shard-iclb: NOTRUN -> [101]SKIP ([i915#3116])
>>       * igt@kms_content_protection@srm:
>>            + shard-glk: NOTRUN -> [102]SKIP ([fdo#109271]) +85 similar
>>              issues
>>       * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>>            + shard-kbl: [103]PASS -> [104]DMESG-WARN ([i915#180]) +1
>>              similar issue
>>       * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
>>            + shard-tglb: NOTRUN -> [105]SKIP ([fdo#109279] / [i915#3359])
>>       * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-s
>>         ize:
>>            + shard-iclb: NOTRUN -> [106]SKIP ([fdo#109274] / [fdo#109278])
>>              +1 similar issue
>>       * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>>            + shard-skl: [107]PASS -> [108]FAIL ([i915#2346])
>>       * igt@kms_cursor_legacy@pipe-d-single-bo:
>>            + shard-glk: NOTRUN -> [109]SKIP ([fdo#109271] / [i915#533])
>>       * igt@kms_dp_tiled_display@basic-test-pattern:
>>            + shard-iclb: NOTRUN -> [110]SKIP ([i915#426])
>>       * igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
>>            + shard-iclb: NOTRUN -> [111]SKIP ([i915#5287]) +1 similar issue
>>       * igt@kms_fbcon_fbt@fbc-suspend:
>>            + shard-kbl: [112]PASS -> [113]INCOMPLETE ([i915#180] /
>>              [i915#636])
>>       * igt@kms_flip@2x-flip-vs-fences-interruptible:
>>            + shard-tglb: NOTRUN -> [114]SKIP ([fdo#109274] / [fdo#111825])
>>       * igt@kms_flip@2x-flip-vs-wf_vblank:
>>            + shard-iclb: NOTRUN -> [115]SKIP ([fdo#109274]) +3 similar
>>              issues
>>       * igt@kms_flip@flip-vs-suspend@b-edp1:
>>            + shard-skl: [116]PASS -> [117]INCOMPLETE ([i915#4839] /
>>              [i915#636])
>>       * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>>            + shard-skl: [118]PASS -> [119]FAIL ([i915#2122]) +2 similar
>>              issues
>>       * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscal
>>         ing:
>>            + shard-skl: NOTRUN -> [120]INCOMPLETE ([i915#3701])
>>       * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
>>            + shard-tglb: NOTRUN -> [121]SKIP ([fdo#109280] / [fdo#111825])
>>              +1 similar issue
>>       * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>>            + shard-iclb: NOTRUN -> [122]SKIP ([fdo#109280]) +16 similar
>>              issues
>>       * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
>>            + shard-snb: [123]PASS -> [124]SKIP ([fdo#109271]) +2 similar
>>              issues
>>       * igt@kms_hdr@static-toggle-suspend:
>>            + shard-iclb: NOTRUN -> [125]SKIP ([i915#3555])
>>       * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>>            + shard-apl: [126]PASS -> [127]DMESG-WARN ([i915#180]) +4
>>              similar issues
>>       * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>>            + shard-skl: NOTRUN -> [128]FAIL ([fdo#108145] / [i915#265]) +4
>>              similar issues
>>       * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>>            + shard-apl: NOTRUN -> [129]FAIL ([fdo#108145] / [i915#265])
>>       * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>>            + shard-glk: NOTRUN -> [130]FAIL ([fdo#108145] / [i915#265]) +1
>>              similar issue
>>       * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>>            + shard-apl: NOTRUN -> [131]FAIL ([i915#265])
>>       * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
>>            + shard-iclb: NOTRUN -> [132]SKIP ([fdo#109278]) +18 similar
>>              issues
>>       * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-
>>         b-edp-1-downscale-with-pixel-format:
>>            + shard-iclb: [133]PASS -> [134]INCOMPLETE ([i915#5293])
>>       * igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-b-edp
>>         -1-scaler-with-rotation:
>>            + shard-iclb: NOTRUN -> [135]SKIP ([i915#5176]) +2 similar
>>              issues
>>       * igt@kms_psr2_sf@cursor-plane-update-sf:
>>            + shard-glk: NOTRUN -> [136]SKIP ([fdo#109271] / [i915#658]) +1
>>              similar issue
>>       * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>>            + shard-iclb: NOTRUN -> [137]SKIP ([fdo#111068] / [i915#658])
>>       * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>>            + shard-skl: NOTRUN -> [138]SKIP ([fdo#109271] / [i915#658]) +2
>>              similar issues
>>       * igt@kms_psr@psr2_no_drrs:
>>            + shard-iclb: [139]PASS -> [140]SKIP ([fdo#109441]) +3 similar
>>              issues
>>       * igt@kms_psr@psr2_primary_page_flip:
>>            + shard-iclb: NOTRUN -> [141]SKIP ([fdo#109441])
>>       * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>>            + shard-iclb: NOTRUN -> [142]SKIP ([i915#5289])
>>       * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
>>            + shard-skl: NOTRUN -> [143]SKIP ([fdo#109271]) +307 similar
>>              issues
>>       * igt@kms_vblank@pipe-d-wait-idle:
>>            + shard-skl: NOTRUN -> [144]SKIP ([fdo#109271] / [i915#533])
>>       * igt@kms_writeback@writeback-check-output:
>>            + shard-skl: NOTRUN -> [145]SKIP ([fdo#109271] / [i915#2437])
>>       * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>>            + shard-iclb: NOTRUN -> [146]SKIP ([i915#2530])
>>       * igt@perf@polling-small-buf:
>>            + shard-skl: NOTRUN -> [147]FAIL ([i915#1722])
>>       * igt@prime_nv_pcopy@test3_3:
>>            + shard-iclb: NOTRUN -> [148]SKIP ([fdo#109291]) +2 similar
>>              issues
>>       * igt@sysfs_clients@create:
>>            + shard-apl: NOTRUN -> [149]SKIP ([fdo#109271] / [i915#2994]) +2
>>              similar issues
>>       * igt@sysfs_clients@recycle-many:
>>            + shard-skl: NOTRUN -> [150]SKIP ([fdo#109271] / [i915#2994]) +3
>>              similar issues
>>
>>      Possible fixes
>>
>>       * igt@gem_ctx_persistence@many-contexts:
>>            + {shard-rkl}: [151]FAIL ([i915#2410]) -> [152]PASS
>>       * igt@gem_exec_capture@pi@bcs0:
>>            + {shard-tglu}: [153]INCOMPLETE ([i915#3371] / [i915#3731]) ->
>>              [154]PASS
>>       * igt@gem_exec_fair@basic-deadline:
>>            + shard-glk: [155]FAIL ([i915#2846]) -> [156]PASS
>>       * igt@gem_exec_fair@basic-flow@rcs0:
>>            + shard-tglb: [157]FAIL ([i915#2842]) -> [158]PASS
>>       * igt@gem_exec_fair@basic-none@vcs0:
>>            + shard-kbl: [159]FAIL ([i915#2842]) -> [PASS][158] +1 similar
>>              issue
>>
>> References
>>
>>     1. https://patchwork.freedesktop.org/series/101301/
>>     2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/index.html
>>     3. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk6/boot.html
>>     4. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk1/boot.html
>>     5. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk1/boot.html
>>     6. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk2/boot.html
>>     7. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk2/boot.html
>>     8. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html
>>     9. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html
>>    10. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html
>>    11. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html
>>    12. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html
>>    13. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html
>>    14. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html
>>    15. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html
>>    16. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk5/boot.html
>>    17. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk9/boot.html
>>    18. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk9/boot.html
>>    19. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk9/boot.html
>>    20. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk5/boot.html
>>    21. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk8/boot.html
>>    22. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk8/boot.html
>>    23. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk8/boot.html
>>    24. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk7/boot.html
>>    25. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk7/boot.html
>>    26. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk7/boot.html
>>    27. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk6/boot.html
>>    28. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk4/boot.html
>>    29. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk9/boot.html
>>    30. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk9/boot.html
>>    31. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk9/boot.html
>>    32. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk8/boot.html
>>    33. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk8/boot.html
>>    34. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk8/boot.html
>>    35. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk7/boot.html
>>    36. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk7/boot.html
>>    37. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk6/boot.html
>>    38. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk6/boot.html
>>    39. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk6/boot.html
>>    40. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/boot.html
>>    41. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/boot.html
>>    42. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/boot.html
>>    43. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk4/boot.html
>>    44. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk4/boot.html
>>    45. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk3/boot.html
>>    46. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk3/boot.html
>>    47. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/boot.html
>>    48. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/boot.html
>>    49. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/boot.html
>>    50. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/boot.html
>>    51. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/boot.html
>>    52. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/boot.html
>>    53. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb2/igt@gem_ccs@block-copy-compressed.html
>>    54. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl6/igt@gem_create@create-massive.html
>>    55. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
>>    56. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html
>>    57. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>>    58. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>>    59. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>>    60. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>>    61. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
>>    62. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html
>>    63. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
>>    64. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
>>    65. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html
>>    66. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html
>>    67. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@gem_huc_copy@huc-copy.html
>>    68. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@gem_lmem_swapping@parallel-random.html
>>    69. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/igt@gem_lmem_swapping@parallel-random-engines.html
>>    70. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@gem_lmem_swapping@random.html
>>    71. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl6/igt@gem_lmem_swapping@random-engines.html
>>    72. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@gem_pread@exhaustion.html
>>    73. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@gem_pxp@create-protected-buffer.html
>>    74. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
>>    75. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@gem_userptr_blits@input-checking.html
>>    76. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@gem_userptr_blits@unsync-unmap.html
>>    77. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@gen7_exec_parse@oacontrol-tracking.html
>>    78. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/igt@gen9_exec_parse@allowed-all.html
>>    79. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@gen9_exec_parse@allowed-all.html
>>    80. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@i915_module_load@reload-with-fault-injection.html
>>    81. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@i915_pm_dc@dc6-dpms.html
>>    82. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl4/igt@i915_pm_rpm@modeset-lpsp-stress.html
>>    83. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-tglb3/igt@i915_suspend@fence-restore-untiled.html
>>    84. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb7/igt@i915_suspend@fence-restore-untiled.html
>>    85. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
>>    86. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>>    87. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>>    88. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-kbl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>>    89. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>>    90. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
>>    91. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
>>    92. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>>    93. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>>    94. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html
>>    95. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color@pipe-d-ctm-blue-to-red.html
>>    96. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
>>    97. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color_chamelium@pipe-a-degamma.html
>>    98. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-max.html
>>    99. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
>>   100. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_content_protection@atomic-dpms.html
>>   101. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_content_protection@dp-mst-type-1.html
>>   102. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_content_protection@srm.html
>>   103. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>>   104. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>>   105. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html
>>   106. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
>>   107. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>>   108. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>>   109. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_cursor_legacy@pipe-d-single-bo.html
>>   110. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_dp_tiled_display@basic-test-pattern.html
>>   111. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html
>>   112. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>>   113. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>>   114. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_flip@2x-flip-vs-fences-interruptible.html
>>   115. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb6/igt@kms_flip@2x-flip-vs-wf_vblank.html
>>   116. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html
>>   117. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html
>>   118. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>>   119. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>>   120. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>>   121. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
>>   122. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
>>   123. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
>>   124. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
>>   125. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_hdr@static-toggle-suspend.html
>>   126. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>>   127. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>>   128. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
>>   129. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
>>   130. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>>   131. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>>   132. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html
>>   133. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html
>>   134. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html
>>   135. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-b-edp-1-scaler-with-rotation.html
>>   136. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_psr2_sf@cursor-plane-update-sf.html
>>   137. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>>   138. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>>   139. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>>   140. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb4/igt@kms_psr@psr2_no_drrs.html
>>   141. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
>>   142. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
>>   143. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl9/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html
>>   144. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.html
>>   145. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl9/igt@kms_writeback@writeback-check-output.html
>>   146. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
>>   147. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@perf@polling-small-buf.html
>>   148. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@prime_nv_pcopy@test3_3.html
>>   149. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl4/igt@sysfs_clients@create.html
>>   150. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@sysfs_clients@recycle-many.html
>>   151. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
>>   152. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
>>   153. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-tglu-2/igt@gem_exec_capture@pi@bcs0.html
>>   154. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglu-3/igt@gem_exec_capture@pi@bcs0.html
>>   155. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk1/igt@gem_exec_fair@basic-deadline.html
>>   156. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk3/igt@gem_exec_fair@basic-deadline.html
>>   157. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>>   158. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>>   159. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-kbl3/igt@gem_exec_fa
