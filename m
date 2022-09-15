Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5755B9B95
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 15:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670FF10E1A5;
	Thu, 15 Sep 2022 13:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA7210E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 13:08:21 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id y11so801385pjv.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 06:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quora.org; s=google;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date; bh=Ij41AtbS0PmHvQ716NEoVk/nUsZg1EaZHRCwDiLyOsM=;
 b=lt6rg77+2eE8V1zG3nNV7vLDjLOCSB/JdA1m38wOzkD7H4I5QpZvug8HrX5PAPNSIK
 WLZI+0EqaxL/WdnSDaxpWNxO2zf2sZJuFxy/3qqZ/Sxq2b8G0UFlHOyM0l+znH+MHJpp
 gXv3GP7Ywiea9Pjrp9iOk6BzDVvapWwKCqZTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=Ij41AtbS0PmHvQ716NEoVk/nUsZg1EaZHRCwDiLyOsM=;
 b=vwobDEA3puwsFQik2zjr1dB6arzOiXq8L/1lG1SzpQcV/94ZGbqHvV8fs+qrnu2v8z
 owXZNJEYtqBHPLcokItq/efKU3+2A0WWBbZ+4R9UaI8qUIKGzMwqTmNsX0RAYBLM9+pa
 kdPqQaKtgAGRUgZbbdM/pk5ZLJ7fDs0eHWmZWvCBx8RJwLE4Iq2+Kxv03rRilSdlUCpr
 lrMHt+QYp6mxi77nktnONMWHPzFxogeu2diPvq6NnNj6fVM685ywuHrshVfhuklXY5LJ
 RbZc+ZVRIJ1l/U0rRR90M2w5+tG42MZZIlmUMI4qTKtqAh0bmZMqWFj2bK5/KR+J5ZaC
 I/fg==
X-Gm-Message-State: ACrzQf0YieKgL0n+4lBl5RWuJEoXCiPcHrst2i36bEEkV55iPsd8SdwX
 RGyS2ix4H2pX4P3+uNFslVPMPIuGD8EWpkZSW6IaKzOpNZoJ0Q==
X-Google-Smtp-Source: AMsMyM7ms0fyUDRWkHOilsgdpbs9teGkCHxmtTAvdYnWY2/U4wFlgTsPniKUTEt0gGRGkOJED2X+Bwxnd1GU/L1+AuQ=
X-Received: by 2002:a17:902:e402:b0:176:e82f:3f4 with SMTP id
 m2-20020a170902e40200b00176e82f03f4mr4401706ple.107.1663247299973; Thu, 15
 Sep 2022 06:08:19 -0700 (PDT)
MIME-Version: 1.0
From: Daniel J Blueman <daniel@quora.org>
Date: Thu, 15 Sep 2022 21:08:08 +0800
Message-ID: <CAMVG2steKr8U9t67rqai=-Qb-aTC2ocJHMiuDHxYBsSusnHckA@mail.gmail.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] Intel Arc A370M vs Linux 5.19
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

Dear Intel et al,

With a HP Spectre x360 16 16-f1xxx/891D (Intel i7-1260P) with an Arc
A370M GPU [1] running the latest Ubuntu 22.10 5.19.0-15-generic
kernel, we see:

i915 0000:03:00.0: Your graphics device 5693 is not properly supported
by the driver in this kernel version. To force driver probe anyway,
use i915.force_probe=5693

Since the GPU is unmanaged, battery life is around 30% of what it
could be. Unsurprisingly, adding i915.force_probe=5693 causes
additional  issues. Given a lack of BIOS option to disable the GPU, is
there any advice for Linux support or at least putting the GPU into
D3? I see only Windows drivers on the official support page [2], and
Linux 6.0-rc5 isn't buildable [3].

Thanks,
  Daniel

-- [1] 03:00.0 Display controller: Intel Corporation DG2 [Arc A370M] (rev 05)
    Subsystem: Hewlett-Packard Company Device 891d
    Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    IOMMU group: 23
    Region 0: Memory at 5f000000 (64-bit, non-prefetchable) [disabled]
[size=16M]
    Region 2: Memory at 6000000000 (64-bit, prefetchable) [disabled] [size=4G]
    Expansion ROM at <ignored> [disabled]
    Capabilities: [40] Vendor Specific Information: Len=0c <?>
    Capabilities: [70] Express (v2) Endpoint, MSI 00
        DevCap:    MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
            ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0W
        DevCtl:    CorrErr- NonFatalErr- FatalErr- UnsupReq-
            RlxdOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop+ FLReset-
            MaxPayload 128 bytes, MaxReadReq 128 bytes
        DevSta:    CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr- TransPend-
        LnkCap:    Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit
Latency L0s <64ns, L1 <1us
            ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
        LnkCtl:    ASPM Disabled; RCB 64 bytes, Disabled- CommClk-
            ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
        LnkSta:    Speed 2.5GT/s, Width x1
            TrErr- Train- SlotClk- DLActive- BWMgmt- ABWMgmt-
        DevCap2: Completion Timeout: Range B, TimeoutDis+ NROPrPrP- LTR+
             10BitTagComp+ 10BitTagReq+ OBFF Not Supported, ExtFmt+ EETLPPrefix-
             EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
             FRS- TPHComp- ExtTPHComp-
             AtomicOpsCap: 32bit- 64bit- 128bitCAS-
        DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+
10BitTagReq- OBFF Disabled,
             AtomicOpsCtl: ReqEn-
        LnkCap2: Supported Link Speeds: 2.5GT/s, Crosslink- Retimer-
2Retimers- DRS-
        LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-
             Transmit Margin: Normal Operating Range,
EnterModifiedCompliance- ComplianceSOS-
             Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
        LnkSta2: Current De-emphasis Level: -6dB,
EqualizationComplete- EqualizationPhase1-
             EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
             Retimer- 2Retimers- CrosslinkRes: unsupported
    Capabilities: [ac] MSI: Enable- Count=1/1 Maskable+ 64bit+
        Address: 0000000000000000  Data: 0000
        Masking: 00000000  Pending: 00000000
    Capabilities: [d0] Power Management version 3
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold-)
        Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
    Capabilities: [100 v1] Alternative Routing-ID Interpretation (ARI)
        ARICap:    MFVC- ACS-, Next Function: 0
        ARICtl:    MFVC- ACS-, Function Group: 0
    Capabilities: [420 v1] Physical Resizable BAR
        BAR 2: current size: 4GB, supported: 256MB 512MB 1GB 2GB 4GB
    Capabilities: [400 v1] Latency Tolerance Reporting
        Max snoop latency: 15728640ns
        Max no snoop latency: 15728640ns
    Kernel modules: i915

-- [2] https://www.intel.com/content/www/us/en/support/products/228342/graphics/intel-arc-dedicated-graphics-family/intel-arc-a-series-graphics/intel-arc-a370m-graphics.html
-- [3] https://kernel.ubuntu.com/~kernel-ppa/mainline/v6.0-rc5/
-- 
Daniel J Blueman
