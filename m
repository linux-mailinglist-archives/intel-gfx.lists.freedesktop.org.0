Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 395F172A9FC
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jun 2023 09:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7750710E17F;
	Sat, 10 Jun 2023 07:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B91B10E17F
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jun 2023 07:45:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="423620390"
X-IronPort-AV: E=Sophos;i="6.00,232,1681196400"; d="scan'208";a="423620390"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2023 00:45:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="834883442"
X-IronPort-AV: E=Sophos;i="6.00,232,1681196400"; d="scan'208";a="834883442"
Received: from mnovakov-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.60.33])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2023 00:45:02 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Sat, 10 Jun 2023 10:44:58 +0300
Resent-Message-ID: <87legrpxqd.fsf@intel.com>
MIME-Version: 1.0
Received: from outlook.iglb.intel.com [10.22.254.45]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Fri, 09 Jun 2023 13:50:10 +0300 (EEST)
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Mailbox Transport; Fri, 9 Jun 2023 03:49:41 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 03:49:41 -0700
Received: from fmsmga008.fm.intel.com (10.253.24.58) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 9 Jun 2023 03:49:41 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="775458650"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="775458650"
Received: from orsmga101.jf.intel.com ([10.7.208.22])
 by fmsmga008-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09
 Jun 2023 03:49:38 -0700
Authentication-Results: mga02.intel.com; spf=None
 smtp.pra=Wayne.Lin@amd.com; spf=Pass smtp.mailfrom=Wayne.Lin@amd.com;
 spf=Pass
 smtp.helo=postmaster@NAM04-MW2-obe.outbound.protection.outlook.com;
 dkim=pass (signature verified) header.i=@amd.com; dmarc=pass (p=quarantine
 dis=none) d=amd.com
IronPort-SDR: 648303c0_jzAV12WLnxTJsrjZ7UhWqxqxRroBxSNGjwpAZOE2bKvjU9c
 GYnVO+GgWJJ7Dn6FWQ6GGsYEWe7DtcjiZsaRaOg==
X-IPAS-Result: =?us-ascii?q?A0ErAAAsA4Nkhy5layhaHAEBAQEBAQcBARIBAQQEAQGBe?=
 =?us-ascii?q?wcBAQsBgVwqKIFNKwMHT4gghE9fiFKRL4sTgSyBQD4PAQEBAQEBAQEBBwEBR?=
 =?us-ascii?q?AQBAQMEhH+FeB8GAQQwCQ0BAQIBAgEBAQEBAwIBAgEBAQEBAQMBAQECAgEBA?=
 =?us-ascii?q?QIBAQIEAgEBAQECEAEBAQEiFwcOECeFaA2CNyJ9Sj4BAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQ8CDVkBASAWFQsBDQEBESYBgT0BDQUiggRYgl0DAQICo?=
 =?us-ascii?q?S8BgT8CAooigXkzgQGCCAEBBgQDAgKdRYFfCQkBgTgBjBWFSjaBVUSBFYE8g?=
 =?us-ascii?q?i2ICIJ+ghmHCIUShD2Ka4Epb4EeOWl/AgkCEWeBCghcgXNAAg1UCwtjgR2CV?=
 =?us-ascii?q?QICETwUUmIZHQMHBAKBBRAvBwQFLSgGCRgvJwZTBxcWJAkTFUIEg1kKgRBAF?=
 =?us-ascii?q?Q4RglwqAgc2ODcDCQMHBSwdQAMLGA1IESw1FB8GQ4EHF2OBfCQkoVIBARV5g?=
 =?us-ascii?q?S5KFx4LBiCSWR0HAQGDG44KgTSePjUHhAuBXQyfF02DNkulVC6XaCCCL6BBT?=
 =?us-ascii?q?YQvAgQCBAUCDgEBBoFjOoFcMxojgzdPAxkPjiAJAw0Jg1KQBjYyOwIHCwEBA?=
 =?us-ascii?q?wmGS4R7AQE?=
IronPort-PHdr: A9a23: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
 EEL9wNQ6Qkcl4h2OOf4/I7PS5wKwDlT8ascbw==
IronPort-Data: A9a23:EVxFyK26ifcyrmvn+PbD5b56kn2cJEfYwER7XKvMYLTBsI5bp2EHy
 2YcDW+OaKvZMzCmctkiO4S0/BtTusOGmt4xGlFqqSg9HnlHgPSeOdnIdU2Y0wF+jyHgoOCLy
 +1HMoGowBUcFyeEzvuLGua/9SEUOYagH+KjU7Os1hhZHFMiEmF74f5as7RRqpZyhtSkCB+6t
 9r3osnOUHeowDcc3lg8sspvkzsx+qyq0N8klgZmP6sT4gePzyB94K83fMldEVOpGuG4IcbnH
 44v/JnhlkvF8hEkDM+Sk7qTWiXmlZaJZWBiIlIPM0STqkAqSh4ai87XB9JFAatjsAhlqvgqo
 Dl7ncfpFVp2ZP2kdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWfG5fgLm4H4Ojb8uT0984uaVyi+
 8D0JxgTQhqxjb64n4i2aehXgsU8Iem7GrEA7yQIITHxVZ7KQLjlaoCSuZp94211gcpDW/HDe
 8AedDxjKgzaZAFCMUsWD5R4m/q0gn74cHtTr1f9SagfvzCVlVQuluG1aZyJJLRmRu0N9qqcj
 l3P7mL0RDUbMvSWzDbD+XWp7gPKtXinB9hLReDkrpaGhnWp6HFQIUQkSmKDrPuVj2KSRusEJ
 lA9r39GQa8arxXwFYGkBXVUukWsvBcaWpxWEu4n7Aily6zI7gLfDW8BJhZAbcYr8sM7TD8C1
 1mVktevDjtq2IB5UlqY/7aQ6DatYy4cKDdeYileFVdbpd7+vIs0kxTDCM55F7K4hcH0Hje2x
 C2WqC85hPMYistjO7iHEU7vnR6mlJKVQFEP6ybWZWak8Q5ZNKiXeNn9gbTE1spoIIGcR1iHm
 XELncmC8ewDZa1hcgTcGI3h+5n5tp643C3gbU1HQ8Z/r2/xk5K3VcUJumsleB41WioRUWaxO
 Be7hO9H2HNE0JJGgUKHCr9d5uwvxKnkUNH6DPbda4ISZZ4rLFPZuiZzeUSXwmbh1lA2lr0yM
 ouadsDqCmsGDaNgz3y9QOJ1PV4XKsIWmzO7qXPTlkXPPV+iiJi9Fedt3LymMr9R0U98iF+Jm
 +uzzuPTo/mlbMXwYzPM7akYJk0QIH4wCPje8pIHKLTfc1I8ST5/UZc9JI/NnaQ0xsy5cc+Zp
 hmAtrNwkwKXaYDvdVrSNCg6OeqHsWhX9CxjZ3B1VbpX55TTSd32t/xHLsFfkUgP8e1o1/lvS
 PcZM8ySH+5CIgkrCBxMBaQRWLdKLUzx7SrXZ3TNSGFmI/ZIGVaVkve6JVGH3HdVUUKKWT4W+
 ODIOvXzGsZYGGyPza/+NJqS8r9GlSJNxborDhOZcoE7lYeF2NECFhEdR8QfeqkkARzGyn2R0
 AP+PPvSjbOlT1YdoYCV15OX5ZykCfV/FUd8FmzWp+T+fyrD82bphccKXO+UdHqPHCn56YezV
 9VzlvvcCfwgmEoVkoxeF70w87kyyeGyrJBnzyNlPk7xUXKVNp1aLEKr4+xzp4xW57oAuQKJS
 kOFodZbHrOSOfLaKl0aJSt7T+fe/80os2H20K0FBUSj+h5ywaeNCnsKDhzd0SZYFaZ+EKE7z
 cgfusI57xK1i0c0Pua8lSoOpn6oK1oeWZ4GrbAfOpfg0SAw+2FBYLvdKy74246OYNNyKXsXI
 ieYqa7BprZEzG/QWiMXOVmU+sFClLIcuwtvzlAQF2+Wm9HAuOA77CdR/RszUA5R6BdNiMB3B
 URGKGx3Ireo7R5zpc0eQV2pJR5NNCeZ9mP11VENsm/TFGusd27VKVwCKfS/x18Y/01cbwpk0
 umhkki9agnTfeb1wicWcmxmoaa6TdVOqyvzqPr+FMGBR5QHcT7ph5G1XlUxqjzlP5IVpFbGr
 uxU7upPefXFFSoPkZYaVaie95otES6hGkITb81lzq0zGUPkRAqTwhmLckC4RdNMLafF8Gi+E
 M1fGfhMXBWfigeLgCwpLvMOKeUsndoCxtkLSpX0L0Eo7pqdqTtItsrL1y7c3WUEffRnofwfG
 KjwKQ2QMzW3qyNPumnvqMJkBDKJUeMcbleh4NHvofQ7KZ0TlcpNL2cw6+KQlFeIOlJF+xm0g
 lvyV5XOxbY/9bU2zpreKYQdNQCaMtipaf+p9jq0uNFwbd/iF8fCmgcWi1v/NTRtIrojdIVrp
 IuJreLI8hvJjJQuX0DdvquxJa1DyMGxfehQa8zMPCZ7mwmGU5TS+BctwT2zBqFIt9J/3fOZY
 TWERvG+TvMvYOcF9kZpM3BfNz0/F5XIarzRoHLhjvaUVTkY/w/1DPKm0n7LbWtkTzI5YcziK
 w7rusSB4sJTg5RMCSQlWdBnIc5cC33yVZQ2c+besWGjMVCppVeZq53elRYEwhPaOEmuScrVz
 8rMeUnjSU6UpqrN8uB8j6VzmR8mVFBGnug6exMmye5c0jyVIjYPErUADM8gFJpRry3V0aP4b
 hHraE8JK330fRZAQCXGzOXTZCWtLc1QBY6hPR0sxV2eVAmuDoDZALdByDZp000rRhTdltOYO
 fMs0VyuGCjozp9QELNZorTxhOp83frVy04Z4U23wYS4Hx8aBq5Mz3B7WhZEUSvcCczWiUHXP
 i4PSHtZRF2gA1vEeSq6l6W5xDlC1N8u89kpUctL6PD2nt3Hich/krj4Mey11aAfZsMXIrJIX
 WnwW2aG/2GR3DoUpLctvNUqx6RzDJpn2+CkebT7S1R6c76Yswwa0wEqxHVnoAIeFMp3GlbR0
 DKr5hDSwWybfVtJ1uT+JRohovpMv7FlM90NpAf6qXnNlhlRIx01vfS15FqTFKwcYJQPc6mVr
 Pn+oapRT5CrWOPYmARD
IronPort-HdrOrdr: A9a23:Bg+TZKvVTdHRdR9E42104Pig7skCYoMji2hC6mlwRA09TyXGra
 2TdaUgvyMc1gx7ZJkh8erwQZVoJkmsiqKdgLNhTItKOTOLhILGFvAY0WKP+UyGJ8SczJ8g6U
 4DSdkFNDSYNzET4qiKg3jbYrNQpOVr6JrJuQ639QYScegAUdAZ0+4WMHf8LqRDfng3OXN1Lu
 vV2uN34x6bPVgHZMWyAXcIG8DFut3wjZrjJSULAhY2gTP++g9BvNTBciSw71M7aXdi0L0i+W
 /Kn0jS/aO4qcy2zRfayiv684lWsMGJ8KoDOOW8zuwubhn8gAehY4psH5eYuioune2p4FE21P
 HRvhYbOdhp4X+5RBD6nfLU4Xih7N8S0Q6v9bbYuwqvnSXBfkNxNyOVv/MXTvPbg3BQyO2Unp
 g7nF5xjKAneC8orB6NlOQgaCsa5HZc2UBS7NL7r0YvJ7f2O4Uh5LD3unklW6s9IA==
X-Talos-CUID: =?us-ascii?q?9a23=3Ax9auJGn61kglVYh51p6yPfqI2S/XOWPxxkXaf0H?=
 =?us-ascii?q?nM2tKSYaRSECd2PNCodU7zg=3D=3D?=
X-Talos-MUID: 9a23:tQtLYgWSMpA7f17q/AXCmXJLbfV32pyjCmwIvbkbgpKJKQUlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="347219540"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="347219540"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-mw2nam04on2046.outbound.protection.outlook.com (HELO
 NAM04-MW2-obe.outbound.protection.outlook.com) ([40.107.101.46])
 by mga02.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2023
 03:49:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K7p5To6ur2M5KPZkHNzjHBCRKvTizba8LXAXlyWpq3UnO+KfeGLBDnSxB3Iy4WgHoX66uV/nMQTmHFopy+8oNf8FsmcDlNvsReyLc292WflvaZIVax/lsTofPq/gy8x+ADSgvDMOdwo0YXDkOA6awlTOx+dK2CZGN4xFZ1SEbubGseaXEj1NZDlkO1oMBaUxjMwuj9SziDVx+dwlZAmNwN+vDD12QHvk7RvqweAmBnr8FRK8CkuIh306igslymTcel73g5hTcTAn8vDUhiTWX3PYaDQeKAunlJ5IvqrPenOfwF+mV0bR2s9hDuxDcGxche/CJL7L2rmWxxiJ0eoaHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tPAVxdFuyYmLDYvAPAWPR6eXt7egIPEovMxeS4xyoyo=;
 b=cyz1/dkgP+4sGUIWVP0HOTgCyR/MXrjfo8Z4g6/yvvqPqIEyZEEj90v2Xfnrf0oYFcXKBllWDMl6NjDi4ihCSE5T7YI73too+Rzea3jsvZS3aCDDLaifWIP0gcUMy00nbSvXh2RROr4wyOGjcCA0b6yixBvNh/rPjwBTf+JjaEg6FaDWxLMfz/6xoOtd2P7buaoyxizh1q9y70lErRUaC82rShHb+oKlc+8QwzVDQgdemQaKpOKso4SmpnUo5f6eKEKi7IW5WrnwW6E7Y66gJhPw9+hNNRm5MWvQEETKZl7zDugfP0LKfsmv+74G1C7qMDHlOHZidiSl2d7xn6g2tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tPAVxdFuyYmLDYvAPAWPR6eXt7egIPEovMxeS4xyoyo=;
 b=UEawdc+p8IGXyLmvzDAiwphVRRRy9udVqwZguxTRzQSwOurir4aUklhAoZLkzXYTShogZkCCIkFNSO1ltSLE3FHZo7gk+OT3LcR9ZARC5y9O0j4yddZrq98FC3L+/PF+pT4+qZMVxMeKWw1E6v8aogmvKVPtgvpsQa87mwmGMCY=
Received: from BYAPR02CA0046.namprd02.prod.outlook.com (2603:10b6:a03:54::23)
 by CY5PR12MB6621.namprd12.prod.outlook.com (2603:10b6:930:43::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Fri, 9 Jun
 2023 10:49:34 +0000
Received: from CO1NAM11FT106.eop-nam11.prod.protection.outlook.com
 (2603:10b6:a03:54:cafe::88) by BYAPR02CA0046.outlook.office365.com
 (2603:10b6:a03:54::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29 via Frontend
 Transport; Fri, 9 Jun 2023 10:49:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 CO1NAM11FT106.mail.protection.outlook.com (10.13.175.44) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6477.27 via Frontend Transport; Fri, 9 Jun 2023 10:49:33 +0000
Received: from SATLEXMB08.amd.com (10.181.40.132) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Fri, 9 Jun
 2023 05:49:31 -0500
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB08.amd.com
 (10.181.40.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Fri, 9 Jun
 2023 03:49:31 -0700
Received: from wayne-dev-lnx.amd.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Fri, 9 Jun 2023 05:49:27 -0500
From: Wayne Lin <Wayne.Lin@amd.com>
To: <dri-devel@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Date: Fri, 9 Jun 2023 18:49:25 +0800
Message-ID: <20230609104925.3736756-1-Wayne.Lin@amd.com>
X-Mailer: git-send-email 2.37.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT106:EE_|CY5PR12MB6621:EE_
X-MS-Office365-Filtering-Correlation-Id: 258cd5a7-3494-4206-911c-08db68d735d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6507Be6Ft3ddTReCB+luKpga3nAbGCTRKsaL21PnT+yPwhZOl543qXWVUErlipI5EvQXgwALhNIKwsdfwEcFg5d2QLgalrvePAu5kzb1XOnmyrOQrIRHP+sHfw37ld2mQJPCb0XytqoLQNqkAv+XbLvAyvefPDUAv71qv9WmNcKKaJzMUwnfNuq+B7xVkEYUIDew5JgyoY8FSAoAK2Dr7SWbx0F8MrexI3XN/LQ5xaVlOcn/u2Tcz8ZtcdO6Vaf6/1nLV922cgISHKyG6/heLdLFRJ79nY7B8H7nyWA3fAqBjjsByud2JndNRkdgH2vrw7Z4pq9ljMGC/VfbzFIGu7zJADxeGh8XSMfO68bdjO0CB6Vp4ki7aApyqu4iIcnfqgyN4zmkRwf7yzJ28uPi0wYRzFfPofWQgee7qLVyC9m/P8SpMtwfUZSBxUTXUvCkKH67U6YaOInmmGtOOESnErS+P2KkQ3MXxmtc5oEG7CMddVud556XNarpoW0erjyMnW+Nbe9Zogh5WKW4Yo3M5OuraL4eMdzh/FZK9Q5R3lcR93h/pWO298wPqksL8H5vUVNh4GvoNo5zoq+A1/+CqSDrMpPTVFTDazMQd3SwnxvTGMH+aSrxxE/eC+UxIYsF3Ld+PRwwvzaho+h6pCJrwdeZKOj/phQI39rIonQH8ZswRtNZxiBHRdR8BdZxn6eDkWhqxBWDBCyfAGRVIsMGOp5WLMBTQulkmT9mUyue+RhAwAdulIZYUJ/96C/CEyFSF8F8DpkDhRan6NW7BT92Kg==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB03.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(39860400002)(136003)(396003)(376002)(451199021)(46966006)(36840700001)(40470700004)(47076005)(40460700003)(7696005)(36860700001)(83380400001)(186003)(336012)(36756003)(426003)(82310400005)(86362001)(81166007)(356005)(2616005)(82740400003)(1076003)(26005)(40480700001)(316002)(54906003)(110136005)(70586007)(70206006)(8676002)(8936002)(4326008)(5660300002)(41300700001)(2906002)(15650500001)(478600001)(36900700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2023 10:49:33.2088 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 258cd5a7-3494-4206-911c-08db68d735d5
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT106.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6621
X-MS-Exchange-Organization-Network-Message-Id: ffb33ee2-f449-4439-9c29-08db68d73a76
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-AuthSource: ORSMSX602.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.8705989
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.023
Subject: [Intel-gfx] [PATCH v5] drm/dp_mst: Clear MSG_RDY flag before
 sending new message
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

[Why]
The sequence for collecting down_reply from source perspective should
be:

Request_n->repeat (get partial reply of Request_n->clear message ready
flag to ack DPRX that the message is received) till all partial
replies for Request_n are received->new Request_n+1.

Now there is chance that drm_dp_mst_hpd_irq() will fire new down
request in the tx queue when the down reply is incomplete. Source is
restricted to generate interveleaved message transactions so we should
avoid it.

Also, while assembling partial reply packets, reading out DPCD DOWN_REP
Sideband MSG buffer + clearing DOWN_REP_MSG_RDY flag should be
wrapped up as a complete operation for reading out a reply packet.
Kicking off a new request before clearing DOWN_REP_MSG_RDY flag might
be risky. e.g. If the reply of the new request has overwritten the
DPRX DOWN_REP Sideband MSG buffer before source writing one to clear
DOWN_REP_MSG_RDY flag, source then unintentionally flushes the reply
for the new request. Should handle the up request in the same way.

[How]
Separete drm_dp_mst_hpd_irq() into 2 steps. After acking the MST IRQ
event, driver calls drm_dp_mst_hpd_irq_send_new_request() and might
trigger drm_dp_mst_kick_tx() only when there is no on going message
transaction.

Changes since v1:
* Reworked on review comments received
-> Adjust the fix to let driver explicitly kick off new down request
when mst irq event is handled and acked
-> Adjust the commit message

Changes since v2:
* Adjust the commit message
* Adjust the naming of the divided 2 functions and add a new input
  parameter "ack".
* Adjust code flow as per review comments.

Changes since v3:
* Update the function description of drm_dp_mst_hpd_irq_handle_event

Changes since v4:
* Change ack of drm_dp_mst_hpd_irq_handle_event() to be an array align
  the size of esi[]

Signed-off-by: Wayne Lin <Wayne.Lin@amd.com>
Cc: stable@vger.kernel.org
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 32 +++++------
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 54 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +--
 drivers/gpu/drm/nouveau/dispnv50/disp.c       | 12 +++--
 include/drm/display/drm_dp_mst_helper.h       |  7 ++-
 5 files changed, 81 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index d5cec03eaa8d..ec629b4037e4 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -3263,6 +3263,7 @@ static void dm_handle_mst_sideband_msg(struct amdgpu_dm_connector *aconnector)
 
 	while (dret == dpcd_bytes_to_read &&
 		process_count < max_process_count) {
+		u8 ack[DP_PSR_ERROR_STATUS - DP_SINK_COUNT_ESI] = {};
 		u8 retry;
 		dret = 0;
 
@@ -3271,28 +3272,29 @@ static void dm_handle_mst_sideband_msg(struct amdgpu_dm_connector *aconnector)
 		DRM_DEBUG_DRIVER("ESI %02x %02x %02x\n", esi[0], esi[1], esi[2]);
 		/* handle HPD short pulse irq */
 		if (aconnector->mst_mgr.mst_state)
-			drm_dp_mst_hpd_irq(
-				&aconnector->mst_mgr,
-				esi,
-				&new_irq_handled);
+			drm_dp_mst_hpd_irq_handle_event(&aconnector->mst_mgr,
+							esi,
+							ack,
+							&new_irq_handled);
 
 		if (new_irq_handled) {
 			/* ACK at DPCD to notify down stream */
-			const int ack_dpcd_bytes_to_write =
-				dpcd_bytes_to_read - 1;
-
 			for (retry = 0; retry < 3; retry++) {
-				u8 wret;
-
-				wret = drm_dp_dpcd_write(
-					&aconnector->dm_dp_aux.aux,
-					dpcd_addr + 1,
-					&esi[1],
-					ack_dpcd_bytes_to_write);
-				if (wret == ack_dpcd_bytes_to_write)
+				ssize_t wret;
+
+				wret = drm_dp_dpcd_writeb(&aconnector->dm_dp_aux.aux,
+							  dpcd_addr + 1,
+							  ack[1]);
+				if (wret == 1)
 					break;
 			}
 
+			if (retry == 3) {
+				DRM_ERROR("Failed to ack MST event.\n");
+				return;
+			}
+
+			drm_dp_mst_hpd_irq_send_new_request(&aconnector->mst_mgr);
 			/* check if there is new irq to be handled */
 			dret = drm_dp_dpcd_read(
 				&aconnector->dm_dp_aux.aux,
diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 38dab76ae69e..487d057a9582 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -4053,17 +4053,28 @@ static int drm_dp_mst_handle_up_req(struct drm_dp_mst_topology_mgr *mgr)
 }
 
 /**
- * drm_dp_mst_hpd_irq() - MST hotplug IRQ notify
+ * drm_dp_mst_hpd_irq_handle_event() - MST hotplug IRQ handle MST event
  * @mgr: manager to notify irq for.
  * @esi: 4 bytes from SINK_COUNT_ESI
+ * @ack: 4 bytes used to ack events starting from SINK_COUNT_ESI
  * @handled: whether the hpd interrupt was consumed or not
  *
- * This should be called from the driver when it detects a short IRQ,
+ * This should be called from the driver when it detects a HPD IRQ,
  * along with the value of the DEVICE_SERVICE_IRQ_VECTOR_ESI0. The
- * topology manager will process the sideband messages received as a result
- * of this.
+ * topology manager will process the sideband messages received
+ * as indicated in the DEVICE_SERVICE_IRQ_VECTOR_ESI0 and set the
+ * corresponding flags that Driver has to ack the DP receiver later.
+ *
+ * Note that driver shall also call
+ * drm_dp_mst_hpd_irq_send_new_request() if the 'handled' is set
+ * after calling this function, to try to kick off a new request in
+ * the queue if the previous message transaction is completed.
+ *
+ * See also:
+ * drm_dp_mst_hpd_irq_send_new_request()
  */
-int drm_dp_mst_hpd_irq(struct drm_dp_mst_topology_mgr *mgr, u8 *esi, bool *handled)
+int drm_dp_mst_hpd_irq_handle_event(struct drm_dp_mst_topology_mgr *mgr, const u8 *esi,
+				    u8 *ack, bool *handled)
 {
 	int ret = 0;
 	int sc;
@@ -4078,18 +4089,47 @@ int drm_dp_mst_hpd_irq(struct drm_dp_mst_topology_mgr *mgr, u8 *esi, bool *handl
 	if (esi[1] & DP_DOWN_REP_MSG_RDY) {
 		ret = drm_dp_mst_handle_down_rep(mgr);
 		*handled = true;
+		ack[1] |= DP_DOWN_REP_MSG_RDY;
 	}
 
 	if (esi[1] & DP_UP_REQ_MSG_RDY) {
 		ret |= drm_dp_mst_handle_up_req(mgr);
 		*handled = true;
+		ack[1] |= DP_UP_REQ_MSG_RDY;
 	}
 
-	drm_dp_mst_kick_tx(mgr);
 	return ret;
 }
-EXPORT_SYMBOL(drm_dp_mst_hpd_irq);
+EXPORT_SYMBOL(drm_dp_mst_hpd_irq_handle_event);
 
+/**
+ * drm_dp_mst_hpd_irq_send_new_request() - MST hotplug IRQ kick off new request
+ * @mgr: manager to notify irq for.
+ *
+ * This should be called from the driver when mst irq event is handled
+ * and acked. Note that new down request should only be sent when
+ * previous message transaction is completed. Source is not supposed to generate
+ * interleaved message transactions.
+ */
+void drm_dp_mst_hpd_irq_send_new_request(struct drm_dp_mst_topology_mgr *mgr)
+{
+	struct drm_dp_sideband_msg_tx *txmsg;
+	bool kick = true;
+
+	mutex_lock(&mgr->qlock);
+	txmsg = list_first_entry_or_null(&mgr->tx_msg_downq,
+					 struct drm_dp_sideband_msg_tx, next);
+	/* If last transaction is not completed yet*/
+	if (!txmsg ||
+	    txmsg->state == DRM_DP_SIDEBAND_TX_START_SEND ||
+	    txmsg->state == DRM_DP_SIDEBAND_TX_SENT)
+		kick = false;
+	mutex_unlock(&mgr->qlock);
+
+	if (kick)
+		drm_dp_mst_kick_tx(mgr);
+}
+EXPORT_SYMBOL(drm_dp_mst_hpd_irq_send_new_request);
 /**
  * drm_dp_mst_detect_port() - get connection status for an MST port
  * @connector: DRM connector for this port
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4bec8cd7979f..f4a2e72a5c20 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4062,9 +4062,7 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 {
 	bool handled = false;
 
-	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, &handled);
-	if (handled)
-		ack[1] |= esi[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY);
+	drm_dp_mst_hpd_irq_handle_event(&intel_dp->mst_mgr, esi, ack, &handled);
 
 	if (esi[1] & DP_CP_IRQ) {
 		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
@@ -4139,6 +4137,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
+
+		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
+			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
 	}
 
 	return link_ok;
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index 9b6824f6b9e4..42e1665ba11a 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -1359,22 +1359,26 @@ nv50_mstm_service(struct nouveau_drm *drm,
 	u8 esi[8] = {};
 
 	while (handled) {
+		u8 ack[8] = {};
+
 		rc = drm_dp_dpcd_read(aux, DP_SINK_COUNT_ESI, esi, 8);
 		if (rc != 8) {
 			ret = false;
 			break;
 		}
 
-		drm_dp_mst_hpd_irq(&mstm->mgr, esi, &handled);
+		drm_dp_mst_hpd_irq_handle_event(&mstm->mgr, esi, ack, &handled);
 		if (!handled)
 			break;
 
-		rc = drm_dp_dpcd_write(aux, DP_SINK_COUNT_ESI + 1, &esi[1],
-				       3);
-		if (rc != 3) {
+		rc = drm_dp_dpcd_writeb(aux, DP_SINK_COUNT_ESI + 1, ack[1]);
+
+		if (rc != 1) {
 			ret = false;
 			break;
 		}
+
+		drm_dp_mst_hpd_irq_send_new_request(&mstm->mgr);
 	}
 
 	if (!ret)
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index 32c764fb9cb5..40e855c8407c 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -815,8 +815,11 @@ void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr);
 bool drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);
 int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool mst_state);
 
-int drm_dp_mst_hpd_irq(struct drm_dp_mst_topology_mgr *mgr, u8 *esi, bool *handled);
-
+int drm_dp_mst_hpd_irq_handle_event(struct drm_dp_mst_topology_mgr *mgr,
+				    const u8 *esi,
+				    u8 *ack,
+				    bool *handled);
+void drm_dp_mst_hpd_irq_send_new_request(struct drm_dp_mst_topology_mgr *mgr);
 
 int
 drm_dp_mst_detect_port(struct drm_connector *connector,
-- 
2.37.3

