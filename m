Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAC1A5CCEC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:57:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6EBE10E600;
	Tue, 11 Mar 2025 17:57:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OugBBxsa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622D410E600;
 Tue, 11 Mar 2025 17:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741715850; x=1773251850;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=iwl9yHGVbscvZq7En/f6CqdPpDuEwyWjmlQdIfxiLSk=;
 b=OugBBxsajnUYv3qSBavXvyI6O0TA5Svj/SMB2PwvvcKP/l0BHEPSra/I
 OXg2qDMSUzwG2ku2HqNlPBQOXvl4mPvUfQpGYIxcWnOOtqA2wZ7CAk8hU
 u3BP20h3acHePFymtfZGdT3l9oR3cjez/bLJFc//jlubXTk7C2upZ+DPU
 GEiKg960OH1R8Jjcxx6geP2yw5K3Cl4/5+pWlMxTFdXHbG/OigCBy3S6c
 zOODYrh55jDdp5Isckxm3XPwfMPoMphhHtPgWqjr9LEweqzZOcuFzqhop
 GGBI0rqfnSRu3oktz19hmFkuzzchSQA2x0Q8+4uy/r9YzWCsAkNGqmoQN Q==;
X-CSE-ConnectionGUID: LWnGCw4wS9yq27jBPmBlbA==
X-CSE-MsgGUID: N2OiDkPLQyGqhG1WL1soBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60174126"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60174126"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:57:30 -0700
X-CSE-ConnectionGUID: JW3JxMkBT32o0z0GZ0/O/Q==
X-CSE-MsgGUID: UMusvksyR5Oe8HnmDm91Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125009879"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:57:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 10:57:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 10:57:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 10:57:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tmqdfRJ0GLLT0vWgM/TZ4Kezv9ABQ5QTvAUiwqMNNvBd5JW9uxZB9F6BAjgFwVnAyID4Q4kJyK7GrOkCkgqgmAS5mnuyaVBFT+XqJAd/0k1pki5pc9v4oGHTGKKMSdxajid78vPrpLKa8Y6vLAe8loTL38770Uj7dnUptX5WrL/wvqVrteXjJ+xLlyURghAjF+cqeKsJUAIp97EziJf3AwU27EJS0uVtz6PAfzBAhVN7t1RhO2IrqgorUbFuYK40nnuKXU14iQfBCBRnTMoS8YCEP870mshSUPCSn6RxvjdPo9L+XgOsuusRg5yImcLIkHXl6jHR2abXKlUX92riuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iwl9yHGVbscvZq7En/f6CqdPpDuEwyWjmlQdIfxiLSk=;
 b=Enxrw5EO/vHqKzNII2qBCoo8ELREGTRsrhtlVinApC+cYwfdki1RZKGYeOZ+L0G0qrwWomPioEapyC6UfpVM/X/Z6lmS00kHZVS38e9+loxBGRR8E8GnQLaQeQop7hmghKs9lV+UUMudoC3428vlGweLxrhA/0PqKt2sekESvAHXDTtHS69UxKk2kUhOdxNhCXI8TcUXOVDPxsDbtLhrpLx3RJSeI2JQox21sL1d+7KTbMbl8hDHNHzX9w5tGBD+Fgr+Ot0R5wWpZJOuFNAr54yb0P5TfabSmWFHYkT3AZ9dD1R3nOcBOY1SDRsXdVX3nGaQKa4p1mirudW2aYc0EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MN2PR11MB4567.namprd11.prod.outlook.com (2603:10b6:208:26d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 17:57:17 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 17:57:17 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Li, Rongqing" <lirongqing@baidu.com>
CC: "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Hunter, Adrian" <adrian.hunter@intel.com>,
 "kan.liang@linux.intel.com" <kan.liang@linux.intel.com>
Subject: Regression on linux-next (next-20250304)
Thread-Topic: Regression on linux-next (next-20250304)
Thread-Index: AduSrWlShT/u9jWuQGqLTs10S+pbfA==
Date: Tue, 11 Mar 2025 17:57:17 +0000
Message-ID: <SJ1PR11MB612942635D5D653CE475A5ABB9D12@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MN2PR11MB4567:EE_
x-ms-office365-filtering-correlation-id: 3ba5b06d-7ea4-435d-c1de-08dd60c629a7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?zeteCYziGVM7gwGILmN3T+4UJEKgSljOM5/ki7TodszpJK4NA2SVepudtQ?=
 =?iso-8859-1?Q?kLvt6GZPf6DxjKBPPcnKoyrsKEg5dI+5ovUyXjr84tku+ut6eNo0yskoms?=
 =?iso-8859-1?Q?F/JbsS4V6kPlkq1FTOubpHnKNjKyz6dmeTvs9SiFkOIw9ja4xXc7hre3JN?=
 =?iso-8859-1?Q?bgER/A99Yal3rYBCara7RgZjYYUr2PkSqNg28Yg0p+MUV1vhggQzHuZf+1?=
 =?iso-8859-1?Q?FmXI33suyekwoaAalq3zDHMTKkwxlqZpQuSXBaE1vmAMzM9T2IqsAP8Xvx?=
 =?iso-8859-1?Q?CH90INpo623KZQ/Sv9ZzvMu+MvwwModc5gxb380bJUysdSJM8RTHmy9hw0?=
 =?iso-8859-1?Q?QwVXQjOfAubZJSuEVOtcB/+VvGqYT8Lg1Lcryf30sB07D7iikwVKWGDg/q?=
 =?iso-8859-1?Q?AGV4Wx8xE9mvRJIYZjERz3Gs3e8H0sTVwmS4KD4VO+bGHh594vFgy9Un2b?=
 =?iso-8859-1?Q?dR1RJ9BHXkKVaNoBLDbc9kAZpJxPSzDOtXEFw44auTM1Hd0bckXtcKZGf9?=
 =?iso-8859-1?Q?LYuPWOaegaBbA+lE59GUGlOyhZtb8LA+ERubYolG57tN1PSnBIRs98zRW3?=
 =?iso-8859-1?Q?8/4yKCaGTVXTi/EVMM32K1U6z8Wf/laxne/35LhLWDES6aRL/a59oKWP8/?=
 =?iso-8859-1?Q?06HU/tmavjw4f106YQnfppKx1mf947dYZzUB4vhB0CdXtyww7Do2R2RXLG?=
 =?iso-8859-1?Q?4Y3PHUE2LWWzqkpKrnXbACaDtiPMOBOMozm5Zq9uHvLDrDaZdj1oF9XYas?=
 =?iso-8859-1?Q?ehLGm8XUJRyAVl4IaVSAwa6Ym3AbvaZhHW85Rc+de+2S1W1hXHSiULU4QF?=
 =?iso-8859-1?Q?5ViRJctVdNwv+ZAFW2E5W1TRxTNKlmVh6gUkutdeD1edKmp57ZFdwqWH14?=
 =?iso-8859-1?Q?FAd2QTG6YTevrsGh29Iim+LArUz4Uw3NIsqXxeBYIe62SdjJoJkEhhRWcr?=
 =?iso-8859-1?Q?n7xzch+qJBMXNRNMxFTVgyd9DRWApwQQIIZOptqPNcA+uAnCLtepTnOyoe?=
 =?iso-8859-1?Q?r/OUa41sm3jiN80kXHaoxh0oI6vXIpgwZ5q2ACMJ+k4FMa1bTGx/uxyFsT?=
 =?iso-8859-1?Q?vLjybpUAZARbPFGdj+jIFvy8iAV82d+07H91wH9l067fgsyP1/tftppiMR?=
 =?iso-8859-1?Q?148h5jxOzZoBMREUmPDLRw1jeSRqev1+gCgDvK05C0X/oBpq5Ecoc4OAU0?=
 =?iso-8859-1?Q?67vJilfDAx+ac+RgLddAbqRQhoU47xqdMv3EipWoOFeixHn0rLwFG6Ht6+?=
 =?iso-8859-1?Q?SEOtEYXk8rHHym0lfgPO3l+8ztghsBUtn82CQ+zrHNhnJVJFwqSWgyzkuI?=
 =?iso-8859-1?Q?7wz3nfb+XXDDLwBLy6FUw8HADv4sX7bXoHWj33fQamEVfHzrVOJqJ58/6V?=
 =?iso-8859-1?Q?AGupHKBvmq/7aNY65yVZcLwEGB/pM5gMzJTvdecjeO0VAHWt2hN56HWArb?=
 =?iso-8859-1?Q?bwCYBwisonpdxpVeFfj/tCO02S68m4QRtS89EQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?nIdXuMeBe+KPjTHL9aqHfPwlqLF5pjqdN3r0VDrKsVyWSXlFU7C5ZB7Znt?=
 =?iso-8859-1?Q?i8C/wpqNB4575xgsxfR1Y+/cIA9+NN/106SLBxhvnyQOP3/OYR3cWOd4iV?=
 =?iso-8859-1?Q?HF3Q9ZRu9zIVMzA2eubGXvQKZVmHXdZZGpNk6bOR2GfyWEg1/2b4to2SYL?=
 =?iso-8859-1?Q?T00CjcOpDdCG2iRBnZQQ4pLfX0NRd7KGJyBbYFRjxvrCyO71eF9pexI2k/?=
 =?iso-8859-1?Q?lz29PmEmBMyA18pBYsDucLCUkYd33K586SuSp2XGNTcpK5oA1aKTSDqRBK?=
 =?iso-8859-1?Q?Uytq3z4oqgK07VaDC+uoO9r085eEuhNXGl6x0CxBrV3AEc4xJTDPx+hOnX?=
 =?iso-8859-1?Q?shZTQhUYfE1mMKMpURWxqS1maNH4KEd/eo1nIse1EK1TjJetZ1wpPMV6Xx?=
 =?iso-8859-1?Q?kmDevHxwxe0a9IBuMjNWmz4yPzda0HEMGXlZAvaP7mhAwyxtHS/juVohp+?=
 =?iso-8859-1?Q?r3vayJi7RIIDNic1844TM4Vca873Wix1nFPLVQSFGY8WJywOR+sjKnUlW9?=
 =?iso-8859-1?Q?ollLFd+lLI6LebGTlU4hb3PmKSEhTU/b2YAh0+yVo/zmrUrQeGwYQqqR2A?=
 =?iso-8859-1?Q?0NL5RRzb8hQLMy3JJp5/Vle2VJwI5QEFIGdIV34K6aZbXdUnP4M85au3MH?=
 =?iso-8859-1?Q?ykx3wQayPjwm7FDnkqDwkdngA7cd6sX6jgM29X2pMWerMFxI6YkfDDmkLE?=
 =?iso-8859-1?Q?uD1SaoMSmxgbJhF38O/0BvNN6uegGAUxjdPsSzDVhqq7Hchp+5eoIzMzmO?=
 =?iso-8859-1?Q?Vwy0BTUnCfSwCL7eEtm8QyGK6018/jghJ2EitywsmiZtfr0gdRL0kW8JzQ?=
 =?iso-8859-1?Q?xtnBaYPTIG8KxlAsPKa2LkG8fjLTkX7NoXGb8kI4szQ92iea7jURk2Ibx8?=
 =?iso-8859-1?Q?Z+VV3bFJaelqG/5mojBNXgBnd8Woo7hKnmbIGnnv0sUsS8GCPu6mal6HPx?=
 =?iso-8859-1?Q?xsRhmcJLNKTysQIUk903bAJhymPS+4XrgbCJHkIAG6VeNJFXmkbpIE3onD?=
 =?iso-8859-1?Q?aIrORRym0nfLFgmhLeHjz8TVxWr8upcoQZdoAnOzfJfD5D4SZrEKJVQiCe?=
 =?iso-8859-1?Q?3zOzdjCbpdrJg9SqnfH/9nNZT5SPJXo8S3+N+y9L+TJlyO+Qklhpl+LQ7n?=
 =?iso-8859-1?Q?hT4JkHCr1j+nZjqkcXcpEVg1EcfoLJfPjd1sV1ZeYIn72cTrJYl3ZBgCqw?=
 =?iso-8859-1?Q?+HY7VStSsyZDcxIewpIDsESF/qcLGM9Keksb3TEE63ZwaSEKbPCxSg9R3/?=
 =?iso-8859-1?Q?RvDBnOK9OeXD5199kH6b0PXmJjNzVpHwCs56mEHK/vD//Ku5djSin+wt1b?=
 =?iso-8859-1?Q?JJfbIo97jeMiwb2scmX95a7+0Rmmd4X9Iv1HjpjWaorlKhUlg1DsFf4SBw?=
 =?iso-8859-1?Q?uOKIrcbN8zYZITFVPIv+n6zLKe6lTiNUZAzwwBKU7L3qSo3FOR+KY+r6DU?=
 =?iso-8859-1?Q?wKSBxjgw8O0TNC2ekZzHQFNPJB+zaWANFus0ky6JPnIcdluQ3AsduezA/d?=
 =?iso-8859-1?Q?H+JxnLt+1hTxhApUINZSG4UHYvShJlWWWZstncb1f47IlgtZEhofHnx1K1?=
 =?iso-8859-1?Q?fGkwNxpnj0/vZnG7Dfc1S4xeq8sGlkQeC4m7si50gWrRNgOqQzqlG8Uw/j?=
 =?iso-8859-1?Q?9D7fzI7Uj89DWD2muhsGDUNEhvbx2Qu+Kg/hgoldNUJY33ENz3IN1X/g?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ba5b06d-7ea4-435d-c1de-08dd60c629a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 17:57:17.4655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CvCn/9l9etXq8UZ0T6jFG0GjHVEw35/oiHSfYujaRiK8cw5kheZC8vSJpoSUwHYu0s03UV7J+Gurhx5RP/CSlEHLKO6A/+kuswuHbAUqMx8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4567
X-OriginatorOrg: intel.com
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

Hello Li,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20250304 [2], we are seeing the following regression

```````````````````````````````````````````````````````````````````````````=
``````
<1> [45.775074] BUG: unable to handle page fault for address: ffff8884d9a1e=
000
<1> [45.775076] #PF: supervisor read access in kernel mode
<1> [45.775077] #PF: error_code(0x0000) - not-present page
<6> [45.775078] PGD 8201067 P4D 8201067 PUD 0=20
<4> [45.775080] Oops: Oops: 0000 [#1] PREEMPT SMP PTI
<4> [45.775083] CPU: 10 UID: 0 PID: 1320 Comm: fbdev Tainted: G=A0=A0=A0=A0=
 U=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 6.14.0-rc5-next-20250307-next-202=
50307-g0a2f88912896+ #1
<4> [45.775085] Tainted: [U]=3DUSER
<4> [45.775086] Hardware name: Intel Corporation CoffeeLake Client Platform=
/CoffeeLake S UDIMM RVP, BIOS CNLSFWR1.R00.X220.B00.2103302221 03/30/2021
<4> [45.775087] RIP: 0010:intel_bts_disable_local+0x14/0x50
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

We suspect the following patch [4] causes the issue.

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit 3acfcefa795c6cfb08c68467060bd7aa30557077
Author: Li RongQing mailto:lirongqing@baidu.com
Date:=A0=A0 Wed Jan 22 15:41:03 2025 +0800

=A0=A0=A0 perf/x86/intel/bts: Allocate bts_ctx only if necessary
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
/commit/?h=3Dnext-20250304
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20250307/bat-dg2-8/igt=
@fbdev@read.html
[4] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
/commit/?h=3Dnext-20250304&id=3D3acfcefa795c6cfb08c68467060bd7aa30557077

