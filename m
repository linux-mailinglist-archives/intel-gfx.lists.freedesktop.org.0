Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHD0NWPThGlo5gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:29:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6C8F5EF4
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D493D10E93D;
	Thu,  5 Feb 2026 17:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z6Q2Dyz5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C19210E93B;
 Thu,  5 Feb 2026 17:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770312544; x=1801848544;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RSsbLbZdX05XW/WYM8//EQQhToO1pw0ph4SZ+sy9/oM=;
 b=Z6Q2Dyz5viqc3U24nKABGvflwM8rqfTc1ZxANzVwIwXzTg8Rn+e7tSAH
 zRgqSRqH/tDqGspPLH6ommQHdJfZWMzwO7LopsUuvxxqKRyANhIXjCPAK
 1qdVYNxsO5X5YrpsXueGBjNW+qDyhOQsf/5oA7jSB+sgfOj2n2P9ieKoJ
 wEI8J0ty0Qfho6bKWb97vau9yTbwNl8sOfA0rudzZkFOxnSwwmeUAECNl
 pBo/XgOiqCjABqHraz48DO9PjhtplyGRdFWjNSVAEZImUJxVhGAcTu6iJ
 Uvy4Elnb6MndrWHHW4F9smSsq2l1GFxXmOy7DLrsnK+qE7q7CJS/2MFDw Q==;
X-CSE-ConnectionGUID: tfLsrXG6QiyRb9Tp/N85tA==
X-CSE-MsgGUID: x4/2Lmv4Q9qQCNoCwzZoEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82885830"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="82885830"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:29:03 -0800
X-CSE-ConnectionGUID: oAbt9Ma+SgCyUhjMOOyXzA==
X-CSE-MsgGUID: 7SN60P3PR8+F1vPelGRa3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="215120752"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:29:03 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 09:29:01 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 09:29:01 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 09:29:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wtVSU268h9gbXB/HjuXWOfU/8PQ962kffKknNjZXcZsmsbwbXRp9Uf/iW9F/w5Md+dweyS82EULpmN4q4g3TQObc//ae/vFs5w3D7DjCZoH+8Yk9GUwjoWuhi4wAEdfFxT2LAk7HluafY3xjEHLKONI1/76IEk5R/qIuOFvye2KGzDJf2oORJa4fenPOk4N8jRKaI3RMlyfTpzZkmQOo6EJhpLvGc1zsDUxpgsr0vcwsPZ89R21Zwn8yIw7ZVnEKlbxQ3/YNQDz9h9MR3etKmYQIDPbhys/SFhrc0sT29bux3qQ0NHTsXhZI+eCf3WHm8THxFWaGQGdW5+mPzDmXWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aUl/shD49zCotZuwYje4nZvs5vzBpeNLhms9++LBvW4=;
 b=u/5hPlazkDxMFW5eLR2syigV9kTrre4+WMxBNMFRgMVGREntehMaD/BSEn94tXXp6JDkNaC028O/6+Qd9rdYiSCF3baE0igdeBbENkRGN+5cyHcxQiboGaSHKFb2+r1n6P/tpxsKGo+TgsE0OCT3Qz+hLpeJXlOB8R19b148MW0NHTVQrFyCqP0+xi1jvU+wQXvJ2xS9Z5B6gDkQKbYGO9WA1IOpUYz3I0FYWySotVbodCdxlX4b5/aMuU6c+7nbhFv485I/EWZSE3DltotAZlmyDZOfQTda6iXwlaCQijOWf4WTgiwBrG+jMLo1/JlaT7W0YXNbGbgn6Dhhiqd3Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by DM6PR11MB4659.namprd11.prod.outlook.com
 (2603:10b6:5:2a5::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Thu, 5 Feb
 2026 17:28:58 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::eb8c:fc1e:e3c0:13a2]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::eb8c:fc1e:e3c0:13a2%3]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 17:28:58 +0000
Date: Thu, 5 Feb 2026 09:28:52 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
Subject: Re: [PATCH 08/16] drm/xe/xe3p_lpg: Drop unnecessary tuning settings
Message-ID: <20260205172852.GB772659@msatwood-mobl>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-8-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-8-653e4ff105dc@intel.com>
X-ClientProxiedBy: SJ0PR05CA0067.namprd05.prod.outlook.com
 (2603:10b6:a03:332::12) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|DM6PR11MB4659:EE_
X-MS-Office365-Filtering-Correlation-Id: ef0c4984-b6fd-4176-4c39-08de64dc0b98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?G2gNfoBj8Isj5CPzoDorVaHaTZO3bZd0avkaHD+nYV3NA+ldTvv6wPxVBcz8?=
 =?us-ascii?Q?+FQVgflVMG3mVjfLFADlUoWIr56CGDXkUCc9B17VusIPs/tETNr4xqF5O54+?=
 =?us-ascii?Q?fWoisxh4K5FWf9q3+E8OhlHixRLY+q20GvJ1ofw27qPkSR0plWly4l22ZvEV?=
 =?us-ascii?Q?S5j3OGw4eGrQzJ5eyd2c03/4TILrGIuhNfDzudFii7C0u5c/r+zlaW3Rs7p0?=
 =?us-ascii?Q?DUrVVZfNU6iHFwqiRyHpPvjIOv5CephPJTuppAyHY3fih3dgzVM8+Iaps6BX?=
 =?us-ascii?Q?dRNWSeXz7zs/FOL5PE4JuHFuwr0LZmxTqb2Ye4v1gE2pISsFpb+PsaO6OR8U?=
 =?us-ascii?Q?WG9FnN+f/eyk6dklOZa//nPEpP/pB0MqjKBGj2pUWhonmVmCUy1M+LRuTvjN?=
 =?us-ascii?Q?Hy9ecCnoIHSMLRbQXZslMk9ymaYoHJeMQBph2GlUQgdoVg/JO7lpGe88UZjY?=
 =?us-ascii?Q?pTOrGY5NfvDZ+kafX/2oajmme6/C8sT/KaAuo6zQaOkaczE15nBeSCG/BH8B?=
 =?us-ascii?Q?fd9ktkI5fAf5KLLkaxO+zx7oqiMWZo1cOHVMLJ9b6BpRtAFefrBdYb+R4Qrj?=
 =?us-ascii?Q?HO1ILf0oGtZ/dsv4Jo9hM3yn3i3TT2qcVKuDSleaxBYn3hJHLuchmPeCasJQ?=
 =?us-ascii?Q?8tod3PybSF4qTtpVUQ8x5V0RKWwc9SlbkUBW3VuSY8P2ivBCc7aPQjzkA4JC?=
 =?us-ascii?Q?DGOO7qZaOkUT70A5E8Bjehi0obdc7RGyNMaeFI6VI8S/BdfFjs9ibESIs9b/?=
 =?us-ascii?Q?TqyeN2RCh/MEMTeckZTgIa8EaIXd9hYjriQq2vstsAuFz+SQmsS3DA31X3u7?=
 =?us-ascii?Q?bxdb7IAUFIT9gj4l8JJQkgqTnXaDl5Owzy6o3aFaKlMdcSadTyyRR0NX4T59?=
 =?us-ascii?Q?WZkY7uGu5QBUw1R1P2oZp+YRRQWZGJ/hhsHH+vmHEnCjMentof4nmFvX3q0y?=
 =?us-ascii?Q?xP95U1RFSlEvwQbwqkKfdMzfHqOuNNc/HzRwMrBRZiaYnDWuvBnD3+YjRHWM?=
 =?us-ascii?Q?010JePNJ6YIkADcA3G95EGadk3yEzEPGvYNMZg1yI5gwFlujMhp+3k2nUb5c?=
 =?us-ascii?Q?xwyRzp5dubn7++KYFsAAqJGfr8KRuPe+3sU8owCs3wbEfsosITVKUEIadfnv?=
 =?us-ascii?Q?e+goNQIT/oLYqJqC0CGEQXpBzOykinXU+KvI0+7l9JpQLKUz8Jy1q+5QJRED?=
 =?us-ascii?Q?vAUTh/v/kaqkLzZRpnDtyGI/EKcRnbBCMNOS27SsYQbNr8gVH3aS0cok/WgF?=
 =?us-ascii?Q?5soasfiBlstkPGECcSbh9+2MurcUiGd11Oi4NSC2MjhQicCTSpZuccHHXfqx?=
 =?us-ascii?Q?dP0maAkO9Y5x7BoHaGZ4kroGsgDLF1bDOxwgmtOlEZJF8mYrNx6ouf/zGDdL?=
 =?us-ascii?Q?whfBjfWOUgTfaxIzFZfvsAExlrXCK/Lr+zN06Pm3nFd2bV+6ZYtOVgIlnaA7?=
 =?us-ascii?Q?GCa3b2g85VRjyOymNX4H9LGUw2lL7ueAAkHmHSgKpf+BiUEhJ638E5EAPEGH?=
 =?us-ascii?Q?lGt5AmxIHp0M9wvfIg5h5OhpjjupPgJd+wwrcb41+edkEEQiiWwmlPE/3Emh?=
 =?us-ascii?Q?vi3Wlhop0hhrciNxKEI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?94h9LI2UXS3HeeokCSYXDCcc9W+C+DWjOrxH4dY2xKHT05aTAT+ZM3qVt+4r?=
 =?us-ascii?Q?Ft63eCiX6fJumPbZs1/iEF+VLIqjtCj2EGZ0DD9OKX9VQu/aJA1T3i6RDfR9?=
 =?us-ascii?Q?xlHZYe3pr1uZbxUUoMFtNXXrNhiBVIhnFmF04JkIc9TMCijfeqP9aC4mjq/m?=
 =?us-ascii?Q?Rkg5lHkeekNnXELm5yFxTZZKLo5Vi0P6/ce/AOgqxsDX/P9ORz7bvHuTKuLM?=
 =?us-ascii?Q?ZnPuapjBWpKmkugNdl0ppzKgZSpJx/aKVGAXVftXVu6gPMg4RfeI5zta1hgV?=
 =?us-ascii?Q?W4EpWH67Rz4kmz8wYC+UP0j9Jzdtw8KLIwjqbJUbtEVS+MUQhWG90hNXjBv8?=
 =?us-ascii?Q?OHPwF46dCVdYNgK0WHtF+C1fCzOml6yJMfKkx2o/kl+DeNSdtIQU1kuXNCzt?=
 =?us-ascii?Q?UPonbVV8/ST7l5ZAB/XeUP+Sdiei6RTiuyRoSiaai0DFOtqqnfRaW+uSQc9o?=
 =?us-ascii?Q?fbosS5S7tBrUxosVuAyCxBFyIlw0Xn7FtbiO4UY89nvIGR3dNR8igkqB1gQk?=
 =?us-ascii?Q?X9nr11q+hHAt2Ph2lr/1arfTgy+T35N3nrlwBZP35apMJtN3MY+CDJEmURUg?=
 =?us-ascii?Q?1DGw0y19BQQ225mzzmdewg6XuV2ay9kiM8Dt9+AVTanvoHZOJbUpKDfFgMPs?=
 =?us-ascii?Q?t/SkG/tUiWkY3BxV4Lh4Glbhb7w65dlRMev1GnaXJMIDaX4NjNoALLg/y+28?=
 =?us-ascii?Q?1UveN2TIHzuGaXLyVLFC6G9rJsaYn6x+FEaVmbd2FiPC36ZD/NHZ0k46Ne+O?=
 =?us-ascii?Q?ATV9JP9rrO2NxrWZ83OxMqunj6IA1A2a7NEbAx+2BJknF2aUF/afiOyExUn8?=
 =?us-ascii?Q?5MhWQtJQSLcWtrf9Ui7HyN80T7VufyaWGlHd8iDrsqZWr5e+/2FzIYppz73h?=
 =?us-ascii?Q?CHHhAvSC+yDUIXdd5brTzfXEwvE3jArxgZBa0GgBes43QCAmcnk+d7boB30V?=
 =?us-ascii?Q?8m8O2dNWx3a8p/0+IUXFUuN1DDmrIV32dLd3DPepWidi+sQEz05EK5m2E7KM?=
 =?us-ascii?Q?J2aPM3LwxTUsBdugh7/0tseKBzmUFoswSNETzEDU+jzkxGwvXH1pkVVzKELg?=
 =?us-ascii?Q?GxOqJ1qDGUoS49vLy3g/4u99V4oB3WScgrxv5gq3kcEIOJhQx0/NiiIupv37?=
 =?us-ascii?Q?p1Du7DWK1mhnfI7RWWgU0IiVXncaQfvvZp2XSMnjo4sfdVfKs8VsQbgaQH5h?=
 =?us-ascii?Q?VLIxEJ0r3Aq8OzbQVLKc+nJc7KR3swcLtWY/KusPgjaLKV5gjAaO3KUaPdbu?=
 =?us-ascii?Q?rR7C8p2r4z8JvLxntBpPWOfWGIuaujLDDk/GLTH4921cDUr7+jLfUfxa7B5h?=
 =?us-ascii?Q?H7GSlOlffNLss2wliYF7VihcvG8H0LpGvATZCOrzrlmGp6KJhQgql08F5M02?=
 =?us-ascii?Q?m+K+LOovUA4uDYvdYb4Vv5OiaXKfYJ097Kb2xKeDytboZVUeBfOrxG9x7Cz9?=
 =?us-ascii?Q?9p1imMLZqF0YrVQZ+PmORSF/ckqIhYe2Awffap0nwI7gyN5QtKY/0xzICahi?=
 =?us-ascii?Q?CqjyX+yK85O1Q4jW/M4COLwGG2rnUoXAUxADgl5MHvTenQnFBSKW7YnVjJZT?=
 =?us-ascii?Q?T/RSNzN3V215nlVzUa7DtCn3PRtNKjd6zkGYz8tl4X2pRnKe0EdINKemeivK?=
 =?us-ascii?Q?wZKY4wpQwJpS1FiJGsKzGzFl8akHAXt6JkfgyPNgRLXG1M1UBdMn9Dc79WdP?=
 =?us-ascii?Q?6UOw4WHSLDQLm91k/h5vAxRo2ah7vXYRFspDpFsU9MydeiJlMHhX7iRix/Vn?=
 =?us-ascii?Q?xMUYq8KSH+JUaHI35JnVLR0y2a2fE+g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef0c4984-b6fd-4176-4c39-08de64dc0b98
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 17:28:58.4370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vmnR0Wk+/HIipo8abw+TryuGdoYPt/2HpTLUxivSKi2KcW1FUj4o8fcCelVhMVzH7+0DgufTDm6yJmNN9Huua/mN/reLaaxdnFao5fLzbNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4659
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.s.atwood@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2C6C8F5EF4
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:14PM -0300, Gustavo Sousa wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> From Xe3p onward, the desired settings are now the hardware's
> default values and the driver does not need to program them explicitly.
> 
> Since 35.xx seems to be the starting point for "Xe3p" version numbers;
> we'll adjust the bounds of the old programming to stop at 34.99.  Even
> though there's no platform with version 35.00 at the moment, this is
> simplest in case one does show up in the future.
> 
> Bspec: 72161, 59928, 59930
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_tuning.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_tuning.c b/drivers/gpu/drm/xe/xe_tuning.c
> index a97872b3214b..694385ae75f1 100644
> --- a/drivers/gpu/drm/xe/xe_tuning.c
> +++ b/drivers/gpu/drm/xe/xe_tuning.c
> @@ -32,12 +32,12 @@ static const struct xe_rtp_entry_sr gt_tunings[] = {
>  	/* Xe2 */
>  
>  	{ XE_RTP_NAME("Tuning: L3 cache"),
> -	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(2001, XE_RTP_END_VERSION_UNDEFINED)),
> +	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(2001, 3499)),
>  	  XE_RTP_ACTIONS(FIELD_SET(XEHP_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
>  				   REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f)))
>  	},
>  	{ XE_RTP_NAME("Tuning: L3 cache - media"),
> -	  XE_RTP_RULES(MEDIA_VERSION_RANGE(2000, XE_RTP_END_VERSION_UNDEFINED)),
> +	  XE_RTP_RULES(MEDIA_VERSION_RANGE(2000, 3499)),
>  	  XE_RTP_ACTIONS(FIELD_SET(XE2LPM_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
>  				   REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f)))
>  	},
> @@ -53,7 +53,7 @@ static const struct xe_rtp_entry_sr gt_tunings[] = {
>  			 SET(XE2LPM_CCCHKNREG1, L3CMPCTRL))
>  	},
>  	{ XE_RTP_NAME("Tuning: Enable compressible partial write overfetch in L3"),
> -	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(2001, XE_RTP_END_VERSION_UNDEFINED)),
> +	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(2001, 3499)),
>  	  XE_RTP_ACTIONS(SET(L3SQCREG3, COMPPWOVERFETCHEN))
>  	},
>  	{ XE_RTP_NAME("Tuning: Enable compressible partial write overfetch in L3 - media"),
> 
> -- 
> 2.52.0
> 
