Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B256CD20A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 08:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2495210E257;
	Wed, 29 Mar 2023 06:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6952B10E257
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 06:24:23 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id j24so14509832wrd.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 23:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680071062;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ctFyhkJvlxmaZ+FFFbtx3qdTt3k64KNBKDO7V/l4T60=;
 b=LbSYJ663s1IFxrBt/WMyOWJkwPdmFDSo/+oAiQMONKHSUpwFfLkVn6JfPsKnDvw/p7
 6GD1fwNr6WcSmrHePWqYIvR1cToxN1n7k42a2pqwlA1SuoHNpzcBeLxi5HTCP/5klUmR
 1Q3CTofwolF5PhHjW7g2hfFMLA5zZ9VcAs0ARNNTBW5pBBFCqqg/zDWCKgl0uj71fi0/
 lkWX3rv5rLajXpv2pik/6FhL5cg83U9O40FboH1ztPII6a+ipzsAY7ckAJ8UvuutigT9
 HdOkdbnND7WJJKQ+kmWh56qo5wjt1D7qv89xQPgdNrER9TCSYWBXEQTDSj7ql506tOVe
 88CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680071062;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ctFyhkJvlxmaZ+FFFbtx3qdTt3k64KNBKDO7V/l4T60=;
 b=dz8RHRJw3rthwqj3YYRapbF6r5P2nDAgSWmsYDfnvf3vuAl7nFvIlinEgkFSXVmS9Q
 HIrsEsWhjUSic3HYzMxGo3YhOyXi5dR1wm2EeW72lIQQvAbfRWMyeo5nh+ZBQfUMoFUu
 DXpcIwoukkXLz2Rze2cGuuEkHcF+SxLhhr9+GTouC8KPdhNAz+JAp4Pcx1zwr2SL1Pcw
 5fibbUqswajBfW1haoyj46USdn4KdOT1I8aV5DWKfq9SzhNECqwMLsEz/wYhh9ZE0uhf
 /1gKKobqQ0IJ0vEFfXsBWDmKswq783omw/WwpDfsKaBik6MeHwk6WxxJSCjcydrsxD5N
 DETA==
X-Gm-Message-State: AAQBX9dDlRnEDovkUEUP/ftF7quAhM6g2fd0iv5OWPTOWer7EpGxa0OP
 EzAGWOrIFPGeiT9llFV14STcsy4lglkWq8Le
X-Google-Smtp-Source: AKy350a5aQtXogKfAodgzmLNin36jCVE4QIqSOxne/I9g3AHKya5fxl3xaT1OvdyEvaPK9cR6cGyxg==
X-Received: by 2002:adf:e882:0:b0:2ce:a8f4:2b01 with SMTP id
 d2-20020adfe882000000b002cea8f42b01mr857046wrm.32.1680071061577; 
 Tue, 28 Mar 2023 23:24:21 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 u13-20020adfdb8d000000b002d2b117a6a6sm29331369wri.41.2023.03.28.23.24.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 23:24:21 -0700 (PDT)
Date: Wed, 29 Mar 2023 09:24:12 +0300
From: Dan Carpenter <error27@gmail.com>
To: ashutosh.dixit@intel.com
Message-ID: <fada1328-2c58-4e06-bd36-1514ddc2d567@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915/pmu: Use functions common with
 sysfs to read actual freq
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

Hello Ashutosh Dixit,

The patch 12d4eb20d9d8: "drm/i915/pmu: Use functions common with
sysfs to read actual freq" from Mar 15, 2023, leads to the following
Smatch static checker warning:

	drivers/gpu/drm/i915/gt/intel_rps.c:2110 __read_cagf()
	error: uninitialized symbol 'freq'.

drivers/gpu/drm/i915/gt/intel_rps.c
    2082 static u32 __read_cagf(struct intel_rps *rps, bool take_fw)
    2083 {
    2084         struct drm_i915_private *i915 = rps_to_i915(rps);
    2085         struct intel_uncore *uncore = rps_to_uncore(rps);
    2086         i915_reg_t r = INVALID_MMIO_REG;
    2087         u32 freq;
                 ^^^^^^^^

    2088 
    2089         /*
    2090          * For Gen12+ reading freq from HW does not need a forcewake and
    2091          * registers will return 0 freq when GT is in RC6
    2092          */
    2093         if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
    2094                 r = MTL_MIRROR_TARGET_WP1;
    2095         } else if (GRAPHICS_VER(i915) >= 12) {
    2096                 r = GEN12_RPSTAT1;
    2097         } else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
    2098                 vlv_punit_get(i915);
    2099                 freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
                         ^^^^^^^
Set here.

    2100                 vlv_punit_put(i915);
    2101         } else if (GRAPHICS_VER(i915) >= 6) {
    2102                 r = GEN6_RPSTAT1;
    2103         } else {
    2104                 r = MEMSTAT_ILK;
    2105         }
    2106 
    2107         if (i915_mmio_reg_valid(r))
    2108                 freq = take_fw ? intel_uncore_read(uncore, r) : intel_uncore_read_fw(uncore, r);
                         ^^^^^^
And here...

    2109 
--> 2110         return intel_rps_get_cagf(rps, freq);
                                                ^^^^
Warning.

    2111 }

regards,
dan carpenter
