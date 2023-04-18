Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7111A6E59A6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 08:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 564F310E11F;
	Tue, 18 Apr 2023 06:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2168D10E11F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 06:48:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="325431737"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="325431737"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 23:48:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="815095560"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="815095560"
Received: from rmenchon-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.143])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 23:48:46 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 18 Apr 2023 09:48:44 +0300
Resent-Message-ID: <87zg75d6sz.fsf@intel.com>
MIME-Version: 1.0
Received: from outlook.iglb.intel.com [10.22.254.45]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Tue, 18 Apr 2023 09:31:34 +0300 (EEST)
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Mailbox Transport; Mon, 17 Apr 2023 23:09:43 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 23:09:43 -0700
Received: from orsmga001.jf.intel.com (10.7.209.18) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 23:09:43 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="723520679"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="723520679"
Received: from fmsmga103.fm.intel.com ([10.1.193.90])
 by orsmga001-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17
 Apr 2023 23:09:42 -0700
Authentication-Results: mga14.intel.com; spf=None
 smtp.pra=Wayne.Lin@amd.com; spf=Pass smtp.mailfrom=Wayne.Lin@amd.com;
 spf=Pass
 smtp.helo=postmaster@NAM12-DM6-obe.outbound.protection.outlook.com;
 dkim=pass (signature verified) header.i=@amd.com; dmarc=pass (p=quarantine
 dis=none) d=amd.com
IronPort-SDR: 643e3424_cvpmqT2OpqVbLXck4V+j2aHvF2CNex9IPvm3HMPQp12Txu5
 hnlBNn4O/u1ynehtTqgVaTkD3LZliJAWQhrrjZQ==
X-IPAS-Result: =?us-ascii?q?A0EmAAAoMz5khynzayhaHAEBAQEBAQcBARIBAQQEAQGBe?=
 =?us-ascii?q?wcBAQsBgVtSgU0qAwdOiCGET1+IM5wzgSyBQD4PAQEBAQEBAQEBBwEBRAQBA?=
 =?us-ascii?q?QMEhH+FPx8GAQQwCQ0BAQIBAgEBAQEBAwIBAgEBAQEBAQMBAQECAgEBAQIBA?=
 =?us-ascii?q?QIEAgEBAQECEAEBAQEZCRcHDhAFIoVoDYI3In1KPgEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBDwINWAEBIBYVCwENAQERJgGBPQENBSKCXIJdAwECAp97A?=
 =?us-ascii?q?YE/AgKKHoF5M4EBgggBAQYEAwICnUGBXgkJAYE3AYt0hUY2gVVEgRWBPIIti?=
 =?us-ascii?q?AiCfoIhihiOLYE0doEgDkpygQQCCQIRa4EQCGuBeUACDWQLDm+BSYMqBAIUR?=
 =?us-ascii?q?A4XEDcDCQMHBSwdQAMLGA0WOhEsNRQfBlZsLRISBQMLFSpHBAg4BlARAggPE?=
 =?us-ascii?q?g8sRAxCNzMTBlwBKQsOEQNNQRlsBIIMByYkny0WeYIPHjFHkigHAYMcjW+BM?=
 =?us-ascii?q?54gNAeEAYFZDJ8ITYMypg8BLpdJIKJdTYQsAgQCBAUCDgEBBoFjOoFcMxojg?=
 =?us-ascii?q?zdPAxkPjiAMDQmDUJAGNjI9AgcLAQEDCYtFAQE?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23:S63V0aBo8Rg2lRVW/y3ow5YqxClBgxIJ4kV8jS/XYbTApGwkhDwGz
 zAXWGqPOveKYDGme4wiO9y3oxxX75PTydNgTANkpHpgZkwRlceUXt7xwmUcns+xwm8vaGo+t
 512hgzodZhsJpP6jknzauCJQV5UjPnWFuGU5NbsY3w3H0k+IMsYoUgLs/YjhYJ1isSODQqIu
 Nfjy+XSI1bNNwRcawr40Ire7kI+1BjOkGlA5AdmOakb5Aa2e0Q9VfrzG4ngdxMUfaEJRoZWd
 86bpJml82XQ+QsaC9/Nut4XpWVRGtY+lSDX4pZnc/DKbipq/0Te4Y5iXBYoUnq7vh3S9zxH4
 I4U6cHvE1dB0prkw4zxWzEAe8130DYvFLXveRBTuuTKp6HKnuCFL1yDwyjaMKVBktubD12i+
 tQ4JTwUbwGDgtianvGAcPBspugMDevkadZ3VnFIlVk1DN4AaLWaGeDmwIEd2z09wMdTAfzZe
 swVLyJ1awjNaAFOPVFRD48imOCvhT/0dDgwRFC9+fJxujCMilYti/6xabI5efTSLSlRtnmRt
 2TLuUD4BDkTMdDZwj2Amp6prrSTwHurA99MS9VU8NZsowO4234aVSYfdmmJnsu+tl6Hf+JQf
 hl8Fi0G9vFprxTyFLERRSaQoXues1gQVtNTO+w89AyJjKHT5m6xBGECT3hHad87sMYeRDo22
 1vPlNTsbQGDq5WQQHOZs7uR8zW7PHFPKmlYPXNdCwwY/9PkvYc/yArVScpuG7K0iduzHizsx
 zeNr241gLB7YdM3O7uT3V3LmjO9pp3zYlB23T/OXkKJwSJba9vwD2C30mTz4fFFJYefa1COu
 nkYhsSThNzi67ndxURhp81dTNmUC+a53C703QcxR8N4n9i50zvyJt4JumoWyFJBaJ5sRNP/X
 KPEVeq9Drd/MWDiSKh2ZY+qYyjB5fW4Toy6Phw4g8onX3ScXAqO/SUraUvO2WnoyRIrl/tnZ
 c7ddtuwB3EHD6gh1CCxW+oWzb4swGY52H/XQpf4iR+g1NJyhUJ5q59abjNijchgs8toRTk5F
 f4Cb6NmLD0CCIXDjtH/q9J7ELzzBSFT6WrKg8JWbPWfBQFtBXssDfTcqZt4Jdw8wPkLzL2Vr
 y/jMqO99LYZrS2WQeltQiAyAI4Dob4l8RrXwARwYg7xgCBzPu5DEo9GJsFuIeZPGBNfIQ5cF
 KBeIJ3ZWJyjuxzC+j8HaoL6opAqfQa2nw/mAsZWSGlXQnKUfCSQooWMVlK3qkEmV3Pr3eNj/
 eHI/l6FEPIrGV84ZO6IM63H8r9ElSNA8A6EdxCUeYY7lYSF2NQCFhEdeddre5BWeUySl2PBv
 +tUaD9BzdTwT0YO2IChrYiNqovvGOx7dne21UGEhVpvHXiDojiQ0sVbXfyWfDvQcmrx9e/wL
 a9W1vzwerlP1lpDr4M2Qf4hwLMc9unfgeZQ7j1lO3HXMHWtKLdreUed0ed166Zi+75+uCmNY
 HypxOV0A7uyFf3ALE8wPysgN+SK6uEVkGLd7NMzO0TL2xV097umD2RRYjOwtAFMCIZPFqUkm
 PkQvfML4VeB0isvY4+MixlJ/ESuMHAvbacrmZUECo62lAYb8EpIO83GLirQ/pu0Ss5tN3MyK
 WS+n5vyhLV7x2vDfUEsFHPL4/FvuJQWtD1Oz34AP16siPOcotMWhTp67iURXAdO6xdIwdJIJ
 WlgMnNqKZW0/ztHgNZJW0auEVpjACK111PQyVwbsn/wVGitC3LwKVMiNda3/Ew293xWeh5Z9
 uq6zEfnSTPbQ9Hj7BAtWEJKq+3RcvIpz1fswPuYJsWiG4U2RRHHgaX0PGoBlEbBMPML3UbCo
 bFnwfZ0ZajFLhUvmqwcCbfL8ZQLSRuBGn5OfuE5woMNAlPnWW+T3RqgFhmPX/1jdtL29X22M
 chMHv50dg+f0X+Opw8LBKRXLL5TmuUo1eU4ebjqBDAntpWDnBE0spiKrinar00oSuVIjswSB
 N7wdTWDM2rInlpSuTbHg/dlM1qCQ+svRVPDzsHs18tRDLMFkuVnUX9q44uOp3/PbTdWpUOFj
 j3Md4r97rJEy701u6DOD68aJQG/Ce2rZdSy6Arp7uh/N4LeA/zv6TEQhELsZTlNHL0rXN9yq
 7SBnfj30G7Bv5c0S2rpoIaAJYYY+fSNWPdrDeyvIEl4hSeiXOre0ykH8U28Kr1Ll4pT3dn4Z
 g2abMDrS8UZde0Az1Joag9fMS0nNYLJUonaqxiQlc+8Uiom7VSfLfeM12PYUmVARypZZ7z8E
 lDVvtit1PB5raNNJh8OOMh7MsUpPH7iRqoUWNnjvhaIDmSTow2ju5mzsTEC+D30Gn2/P8Ki2
 q38Rz/6bwWUhKHE6Pp7or5ClEQbI1gliNZhY39H3cB9jg6LKVIvLMMfAM0gMY5VmCmj76PIT
 mjBQ0V6ABqsQAkeVwv35enieQKtBuYuHNPdDR5x9mO2bxaGPq+xMIFDxAxBvUgvIiDCydu5I
 +4w4nfzZxi94q94TNYpu8CUv71V+eP49Fkpp2bNysD8OkNLS/FCnnlsBxFEWiH7AtnA3heDb
 3Q8QWdfBlq3UwjtGMJnYGRYAwwdoCip9TgzcCOT25zKju13FgGbJCHXYIkfE4Hvbfjm4JYob
 FauHS6hxj7T3XYe/6w0p9gunKl4T+qRGdS3J7PiQgtUmLys7mMgPIUJmi9noAQK5ltEC12E/
 tWzyyFWOahHABkOsFFV9enN05t0XjQHCDShYMvXu2rdiRJgpzTGU0HC8e84QK0cb4DqukkeS
 zAXBKpUT5t6qxO8zQRDWj8nSpBrzC3f+bQokszlc38qriqRdQ==
IronPort-HdrOrdr: A9a23:6RN4FKw0X/7pa2de6+mBKrPxPuskLtp133Aq2lEZdPULSKGlfp
 GV9sjziyWetN4QMEtQ/+xoX5PwPU80lKQFn7X5WI3PYOCIghrREGgP1/qH/9SCIVyCygc+79
 YaT0EWMrSZYjYK7reZkWyF/s4boOVvmJrY+ts2pE0dND2CBZsQiDuRPjzrY3GeCTM2TKYRJd
 653I5qtjCgcXMYYoCSAWQEZfHKo5nxmJfvcXc9dmoaAF3lt1KVwY+/NyLd8gYVUjtJz7tn23
 PCiRbF6qKqtOz+4gPA1kfIhq4m1ufJ+59mPoihm8IVIjLjhkKDf4J6QYCPuzgzvaWG9Esqqt
 /RuB0tVv4DpE85RlvF4CcF5jOQnQrGqkWSg2NwuEGT6vARkQhKR/aohupiA27kAgQbzZFBOZ
 lwrhCkXqpsfGP9dRvGlqv1vmlR5zCJSFoZ4JkuZi9kIP0jgflq3MQiwH8=
X-Talos-CUID: 9a23:5SA8omxnBKQfeAItHbBOBgU0F8w8c2zdyU38fQyDM39paJG6aH2frfY=
X-Talos-MUID: 9a23:ouQRxwSwlWwbQcmjRXTqp29JKdVhvp+nK3I/rqcBh9m9ERx/bmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="345083567"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="345083567"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-dm6nam12on2041.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([40.107.243.41])
 by mga14.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2023
 23:09:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HaNof7xxhLZZbDywPGEluetHaptzDuggM+aP2fmzurFYUWagcI2FomtNADT8ozmvuUW4uhE/GtxraTo8haaNuOzZlQ89CNYkslsD1SDWXHSVtxIz721WXuT1Nbq/QchcxLZS4fUF58K9PefrcSapADgJPExoyixx/o6dLzcSqY8TsqrE+FIxV4Jeq9W9Oi07RpH4ARfN+7PjBfc3/fEGge1uyj5pgCzB3NPJBXGg8GvoDspEYSA8skm3Uxi0mbfZjS65YePgc8VzXHnKEuudzOjZGIhzuBaAt46d1Kb3+1HVmNWX1C2jI8T4mU71L4FB7hio3JTo2m1INGZT+2QdkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2DxxzEqJJeg6OhCgPivSQApLe6bdKKtl/Edk/R9xvnM=;
 b=GejWL7HMC8EXHNidvcMXwiU/2MdA/mJkyggoYDbFkmhXW1bXSCdfLdseaZnuIHjm9EB0kRPoLGv/lRCunlcLtFvhDQqwiLpy/FX7mahc/VECpntIFPUQSOQnVx7vYiR+HsdAXduJvq+u2C2nzu0ewNOXVHeQOsgd27bH1SS7H/ETIpRxP96/2wTKeY0rO8lAJkuLNVBfrVAP92cqsj1u2aIyS7gYFK4kIKs3hpEPlPH28cWs1tK5lkw67lCZJVpvhdm8nkwkIef5UtP9kq7KRBIotBEYhZeaUBRRph6DuqxWB5C0mnYJJOXDOvCHHwHx/VIPeA9qPMvd4+vTRJMdNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2DxxzEqJJeg6OhCgPivSQApLe6bdKKtl/Edk/R9xvnM=;
 b=2GDSuMjVyfrTIgYTaWqBIEwQrrntL8x3vclBI9RhgevdtBDk4B/FrG0WE+Jgg4xqIXA0tnuHB/EXVlfvWZcrlP7M/XXoLLh8Mv9gIlvMXpwWQ0jqfw8LuvRcesB80YAdHMhNlnnpsv5rlhY+gGMr8FvLKVtp8bNyecIhXznkob0=
Received: from DS7PR03CA0041.namprd03.prod.outlook.com (2603:10b6:5:3b5::16)
 by IA0PR12MB7529.namprd12.prod.outlook.com (2603:10b6:208:441::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 06:09:31 +0000
Received: from DM6NAM11FT102.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3b5:cafe::af) by DS7PR03CA0041.outlook.office365.com
 (2603:10b6:5:3b5::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.47 via Frontend
 Transport; Tue, 18 Apr 2023 06:09:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DM6NAM11FT102.mail.protection.outlook.com (10.13.173.172) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6319.20 via Frontend Transport; Tue, 18 Apr 2023 06:09:30 +0000
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 18 Apr
 2023 01:09:25 -0500
Received: from wayne-dev-lnx.amd.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Tue, 18 Apr 2023 01:09:22 -0500
From: Wayne Lin <Wayne.Lin@amd.com>
To: <dri-devel@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Date: Tue, 18 Apr 2023 14:09:05 +0800
Message-ID: <20230418060905.4078976-1-Wayne.Lin@amd.com>
X-Mailer: git-send-email 2.37.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT102:EE_|IA0PR12MB7529:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ba0c8c0-16aa-4f3d-9432-08db3fd37968
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CyuAw7UX5yXL0oMmxfg9r0uF5Rg8lPfV2Mcb+btcyGbdTBko9SLQh71aosMyEu+bk4N3i/lj7C4mCBc+md4oEKzvx4pmyH1s4JdOPtCsxWM2GBZLuPsTN1EaVj0IQxZQM90SAdGQOgW5PoGkJvIkskrfyN59pM8tmN5flG8T61bTP0MhJuoFcoFoi1mnRP4yfEtkoLJXqhi+FF1jW03vtkJRmMMtLmkOKI7hf2L4ccl+ywD50x0fyrkl1ij3BG+PDtYwxM9idijRD9UhiTJ+UBBOiKxt7zl+Sw9J9c/t2VUMOFD5dKbmegYB8VRCS6y8xfwD61jhkjKil7kNBdBGAmV2sO8LxLt+FLVjvaSRh9iXvCy6lAxt1quuZmJwyKD9VlXZ2O0efbEMFYxJvcuY785MfMl6oNUHUKEm4NhtRfwq0TB3M5k9Y2CEdltdO9BuZaa+5zz99JMcbCSdgJz9o2qGdmu+j4z4fqyUxTuugc5u/cbEg9I2Bv1lja5K2hg7jjxHmEjYGr53hUqAODQkoCpvoc2THAU0InAAcGWAdKgybHga4vMySktFDwXCfVTWuVzk3J9sZZt6olfhYrq8k58nmUf+9slAjjuqyi5DzTHTiAfg4xwOeXGXteirjdKGalx+90ZgoV7ty4ou5t9NcUG99hgmF07fW331rfSXqfZI7DmmXGEKFtvkPCLGf4Vw+TnrSE3HLYhY9T65wwfQAi7QQSsTXIV6vmms8GfAd+Q=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB03.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(136003)(376002)(39860400002)(396003)(451199021)(36840700001)(40470700004)(46966006)(36756003)(8936002)(8676002)(40460700003)(5660300002)(2906002)(15650500001)(82310400005)(86362001)(40480700001)(478600001)(7696005)(6666004)(54906003)(110136005)(186003)(2616005)(36860700001)(1076003)(70586007)(70206006)(26005)(41300700001)(356005)(82740400003)(316002)(83380400001)(81166007)(4326008)(47076005)(426003)(336012)(36900700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 06:09:30.9822 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ba0c8c0-16aa-4f3d-9432-08db3fd37968
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT102.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7529
X-MS-Exchange-Organization-Network-Message-Id: 1cac74bd-98fe-4ac7-6757-08db3fd380c0
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-AuthSource: fmsmsx603.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.4664752
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.023
Subject: [Intel-gfx] [PATCH] drm/dp_mst: Clear MSG_RDY flag before sending
 new message
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
Cc: jani.nikula@intel.com, stable@vger.kernel.org, jerry.zuo@amd.com,
 Wayne Lin <Wayne.Lin@amd.com>, harry.wentland@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[Why & How]
The sequence for collecting down_reply/up_request from source
perspective should be:

Request_n->repeat (get partial reply of Request_n->clear message ready
flag to ack DPRX that the message is received) till all partial
replies for Request_n are received->new Request_n+1.

While assembling partial reply packets, reading out DPCD DOWN_REP
Sideband MSG buffer + clearing DOWN_REP_MSG_RDY flag should be
wrapped up as a complete operation for reading out a reply packet.
Kicking off a new request before clearing DOWN_REP_MSG_RDY flag might
be risky. e.g. If the reply of the new request has overwritten the
DPRX DOWN_REP Sideband MSG buffer before source writing ack to clear
DOWN_REP_MSG_RDY flag, source then unintentionally flushes the reply
for the new request. Should handle the up request in the same way.

In drm_dp_mst_hpd_irq(), we don't clear MSG_RDY flag before caliing
drm_dp_mst_kick_tx(). Fix that.

Signed-off-by: Wayne Lin <Wayne.Lin@amd.com>
Cc: stable@vger.kernel.org
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  2 ++
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 22 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +++
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  2 ++
 4 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 77277d90b6e2..5313a5656598 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -3166,6 +3166,8 @@ static void dm_handle_mst_sideband_msg(struct amdgpu_dm_connector *aconnector)
 			for (retry = 0; retry < 3; retry++) {
 				uint8_t wret;
 
+				/* MSG_RDY ack is done in drm*/
+				esi[1] &= ~(DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY);
 				wret = drm_dp_dpcd_write(
 					&aconnector->dm_dp_aux.aux,
 					dpcd_addr + 1,
diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 51a46689cda7..02aad713c67c 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -4054,6 +4054,9 @@ int drm_dp_mst_hpd_irq(struct drm_dp_mst_topology_mgr *mgr, u8 *esi, bool *handl
 {
 	int ret = 0;
 	int sc;
+	const int tosend = 1;
+	int retries = 0;
+	u8 buf = 0;
 	*handled = false;
 	sc = DP_GET_SINK_COUNT(esi[0]);
 
@@ -4072,6 +4075,25 @@ int drm_dp_mst_hpd_irq(struct drm_dp_mst_topology_mgr *mgr, u8 *esi, bool *handl
 		*handled = true;
 	}
 
+	if (*handled) {
+		buf = esi[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY);
+		do {
+			ret = drm_dp_dpcd_write(mgr->aux,
+						DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0,
+						&buf,
+						tosend);
+
+			if (ret == tosend)
+				break;
+
+			retries++;
+		} while (retries < 5);
+
+		if (ret != tosend)
+			drm_dbg_kms(mgr->dev, "failed to write dpcd 0x%x\n",
+				    DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0);
+	}
+
 	drm_dp_mst_kick_tx(mgr);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bf80f296a8fd..abec3de38b66 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3939,6 +3939,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (!memchr_inv(ack, 0, sizeof(ack)))
 			break;
 
+		/* MSG_RDY ack is done in drm*/
+		ack[1] &= ~(DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY);
+
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
 	}
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index edcb2529b402..e905987104ed 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -1336,6 +1336,8 @@ nv50_mstm_service(struct nouveau_drm *drm,
 		if (!handled)
 			break;
 
+		/* MSG_RDY ack is done in drm*/
+		esi[1] &= ~(DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY);
 		rc = drm_dp_dpcd_write(aux, DP_SINK_COUNT_ESI + 1, &esi[1],
 				       3);
 		if (rc != 3) {
-- 
2.37.3

