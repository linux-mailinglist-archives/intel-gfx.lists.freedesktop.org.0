Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLYFLX+2e2neHwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 20:35:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0A2B4078
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 20:35:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A78C10E196;
	Thu, 29 Jan 2026 19:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YkMzsMWZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027F610E196;
 Thu, 29 Jan 2026 19:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769715324; x=1801251324;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Jt431mHW9zgbLPrrehdA/u7y8KbULPf/L/9pu8y5lFo=;
 b=YkMzsMWZPB/4wAZ/Iagufjlp+bKzFcj0e7K4XGW0J4MpfRWpbzAwYYrr
 ZXpDTNbKmW8pMkKTTCRDHfonzKMhm36S3500Ug0++VOcSAaYmpI9wfOU6
 BVquku/k0tpza2dSMnEiNUT/SCo4Lw/CoGUS+U47VhZQ7s4XHkxFmdbmK
 RYsI5DB6zQHvpoFgrvy9n74wAsviARX3KTwo8PHNvTFo1SbXWREkbNhHT
 qSntbhM0dnjkisIvxcxL+ESuhcxznIWIGa3iUEtWMcODVPTT4jTjMu8kr
 Qyvi4+eFy8JnLMU9p8pGCigG+ZEFhTDNTcGG2MkFaxsCy6TFZkoa6TlrT A==;
X-CSE-ConnectionGUID: wAQJ1xKSTpWfQV9NCxz7aA==
X-CSE-MsgGUID: SRZ8sGqMQXOcEjz729GdEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="81701415"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="81701415"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 11:35:23 -0800
X-CSE-ConnectionGUID: Wwr5V3wqS4KtygAa4YN9Zg==
X-CSE-MsgGUID: EKEWNHshQGeryXGx5bKQwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="208578027"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 11:35:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 11:35:22 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 11:35:22 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.45) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 11:35:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CSM/F+6rEExKT35tyrHJKwxPYuc+oicjEhGo7byhjy7rthQAAMlDqrfoRs5IYTZkN9RSS7I1rsJufd2/R37MMDB8XsP50zu7DJEk+SjsIU3ZXt2sJmv69Ih2abn7/qZHGZ+blPn+rH6PdK2y1MRzxlBc9xyDbCjZQtmrzA/oIcbMSxueQgKA+DRMKhefx+90g1PNfYwmrAm31Qh56cL8V7X1bZWpEo66slA3xUIzasaUurLNB8YAEV48ajDQLOVOWnBqM5JsR3ivYcEuSgga93F3vPv8svB8ZNOjDofBxydKgRcFBnkzDFuN2igdDn9nv366yYsW8rVC/oKA2ExECg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ElKPkDiwGQpR72Xx5fC2Fx23mGvgWbtj8JyZ+yWGUvI=;
 b=Ru3WMpDZEESzCMaF3YXCSFp7vLqSWg42258u75MBMibktdwoBFlenloR6JAa667IL+3Qh2uZfhp8Yf5UA9J39MSZeP7SISJJqZTmKT4rMiXluKso9aaYkmGDT1ELSUBD8YZ5CrXDFjU1qtzH1G31dh9AhjO99Y+66oSiQYJBTi7FxefltflRUKTeu3GOGaZnP3jc3OKMHehj3XwtUx9x1WueXV27piF7odKFnImKsFZB1AbB/GfPUceY1HWslzBDbzBnhhJLKmytIdqF8raCwwFGXb4kwG8ARI2Nc1KGcTLe8VBzfdjfbI7YUSkUzwwhsptELX0qyvyOvHmp8yWMwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB9521.namprd11.prod.outlook.com (2603:10b6:510:3b1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 19:35:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 29 Jan 2026
 19:35:21 +0000
Date: Thu, 29 Jan 2026 21:35:15 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 05/16] drm/i915/dp: Rework pipe joiner logic in
 compute_config
Message-ID: <aXu2c7_CNClkzvR-@ideak-desk.lan>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
 <20260129171154.3898077-6-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260129171154.3898077-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6C1.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::657) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB9521:EE_
X-MS-Office365-Filtering-Correlation-Id: f4499d6b-77e5-46d0-e28d-08de5f6d8a3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jJs4QPR/NWJsBZcGaSFksBKAALmfX0PfBvHYHkgnCUMcc+/+CAHQNActSsLD?=
 =?us-ascii?Q?yBDf3P2hFXPuznrszLXYgr/vImRL6OhuMOwWH+bqd7qXQ40Vc4hE/TlUB/jN?=
 =?us-ascii?Q?+akqGIJra3IZKV4FZvZHD4VSuV5i+nXw6zzB/qBJKJxLOaqUkKsUOMaBbUBT?=
 =?us-ascii?Q?vbfUbevlL22VJHxtCxNuIa/XXgXFfw12L8igsDOGDjsEN2/nmrdgWK4SYCLy?=
 =?us-ascii?Q?OkiSy7n0jESgCnQPjBDm2K4Qc/mfAEFZYcB1ooz6JSzsT6i0p8pWRVikgyls?=
 =?us-ascii?Q?dVBVHw6RUdH4HYvozsGHv0cRKRCoiiARn08lEvFP9DSakkmbNGuHtzYc3+nu?=
 =?us-ascii?Q?DcfVZlYuK1sOvO4YayMkZBmXUFRG6h3P4gXqZnu2PikixWAa/oMpn8yxcHvH?=
 =?us-ascii?Q?NSrNfHUlQ8Ip1ZVX8Jr0uxDNXMSia/Lj7yltJM3QRoXh8Z4mBybhk6a3YpTP?=
 =?us-ascii?Q?j9MfGgB/8vdIhZqzs48ab/Ob+3Nxewcqztjb+HuCi91DM84yxoZdZtC6E9Nr?=
 =?us-ascii?Q?JDA2dHC8oxyROYUqLUa1CvVwTbIHf2G+FEOaylSHePkm09EPEdWoNbw9NFC8?=
 =?us-ascii?Q?J81isMsX6GIycOPeIav6kkEgY4aVEo307WObES/Awc3JraP2hec/y0BRGMSA?=
 =?us-ascii?Q?iPprabq9r1lx3RcIs7LwHlKl3OXzwSqrvD0drs/cKTnigfwnt4c0723cih56?=
 =?us-ascii?Q?uthmsdSDnqbIDK5RLYXn27yfoqn3q1ukBVu6pfvZBMsmJPqa4+fyYd4iL1+T?=
 =?us-ascii?Q?96E8rOXfyRQpuvUf8h6BjR2Ccu8RsvZDLFNYocpycvjhuALMuZm2kDwTYBh3?=
 =?us-ascii?Q?g5oV/Fd6EZPnmtYFjQwn9YHn2w3W4R0WRY8KHeHRONMDWP3O7JEXkAuwCPAc?=
 =?us-ascii?Q?/IPqzmrduEUXLVKbw0i6sryLrxeNQif4BYjsr6ZhYOZdyAdAHfQWjdIRWyl8?=
 =?us-ascii?Q?1iGXwKTtVLTGKWICGfwdBnz8nbJpfvYuolGuNsVLhtFKVEOe7iQZeOTWdU3K?=
 =?us-ascii?Q?22KePp4sR/0Xr7SgbdsVMgk8MLu3Hi2s31v1NDiSq/O6E9vPV21v31fxNafs?=
 =?us-ascii?Q?16y7h5ZjRasZ0p2kGoJxteh+raxp+MuYKMVVDUJLRL9FLLHG+v8F1XtP+Xq0?=
 =?us-ascii?Q?CV4tkHUCRNFozu+h/pKsdPne780MZkJsRBrkLxobEwlFf2vozk8QrVNp0+bv?=
 =?us-ascii?Q?tfp09Lv5p3/3KYq0CLHHrYhW+/uO1slPDN251R32RxnQXxgFqx1/IzHe7B6Z?=
 =?us-ascii?Q?4pI0d1GIwO5MqpTRJB9VZ6PdERzKGmCTNELF6+CY7J8OiCvi3IiadDSBwGfB?=
 =?us-ascii?Q?aaemHTblshmyP5hZ1pba9cyM+pSjmRv++1cHvT0y391seN0k1K5+LlkVCj5T?=
 =?us-ascii?Q?F1RAVEPxESeQTQxZAUfJ+WQANLKN0EdRBgqKAVeVmrbrxN6KadWZ6yJ+jLNA?=
 =?us-ascii?Q?Qw5ebfjxEBcyWg2r75FgVXZ4nv4AuG4/jDnfVORFivMitg5UYorzFYgrqQRm?=
 =?us-ascii?Q?aTNHyQ2zr1UWSwVks9u2ezH3Af4z8OqzKlATLn5+XgWWi7qhFb2eiwTe1Lb5?=
 =?us-ascii?Q?RPit/6nfhWbPG+0RnTg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gV8VSrJtc6oZilkvq69GXqIZHL8lAl69rHaflkmwpZMljzyi/CwIaieFC19+?=
 =?us-ascii?Q?s7U3/8OPw0OMsPR5XEHdnM1Ecb1AlZcIJfh/8/ostjakn51QcfrsC5oSfkNA?=
 =?us-ascii?Q?haKWCQ+ixq5HHp2tc6omHJEuh1peuZFYFc2qFhtUcgn9nb3bgiR0rLMvkMO7?=
 =?us-ascii?Q?1g6AcxNT1XGQl1LK9H0+1Be3BDdmnn1l4oDq1D2T/GUrqeOXSk1yY6x6RzzB?=
 =?us-ascii?Q?YcqNTtRTA6j45/sw6nrUl0GwL1PuztM5crj9CgK+KrPf9vuKj7Bwj4anyMMA?=
 =?us-ascii?Q?Hu2d4DqnQQdyfxYAZY4SKmfBQUfzz9rOXQjc67esBoRHe1+VCgNAEu52vu54?=
 =?us-ascii?Q?jaeYD/lj/e5xYVbCWvmOuQgluWPCbsJz5wKwQ/Tvz6HlnuQ7Wfvytw548nG2?=
 =?us-ascii?Q?RyyUazGjDLFC98TGU5LYImCOSxwVZzqaJNvQPtzO2DO1KrCaB798nRi2lNbL?=
 =?us-ascii?Q?fN2of9uX1eZTYrnK3ySdngCl9YIdAv6aO0ThLKwjD3BjdAYLLwcEv6WVzdcW?=
 =?us-ascii?Q?ne1zHdi5XsieqT7z5yq+P++BPpybPiB27Fi+gVi5ZBh0DBlRxIYCu9Zi/nIs?=
 =?us-ascii?Q?8zqpO12p6tbzFOomo+OsBYQus3QLDqn6dyYccYL06N6miGkDHFn7febkYFxO?=
 =?us-ascii?Q?XvnzZ2uR78ofUkj+nrmvfzu1zT+8s5oyhU9LLgWdVMlZvo/SErupiVLAelbg?=
 =?us-ascii?Q?W2KwclD7XnoDux1hDMS7Pre9jLiPARWNYhhTGTD7NMyi9cnLhcOUh2+ySB78?=
 =?us-ascii?Q?doyMWPH330a5ocS7Xg2DCMAunG4p0glQ3vgeymhr703LoDOS7ZHm0Jns/aDf?=
 =?us-ascii?Q?gkHo5m770ioxXdbaI7QIEms2Q2za4yFCdEjj6WyLsEhNkjTQDezJ9WuWh52P?=
 =?us-ascii?Q?pqsttvIv0FFJ4SjNP2JEJIvC3KBW5jPlJ+3L5aZUrmJMqBVT9yC9jc4U21N7?=
 =?us-ascii?Q?1+X09R7iFGOXS7gsHmKGnA4gaS1p4aPFENW15rekrDCx+xyK/LgeG75e7PfI?=
 =?us-ascii?Q?764pSkmKJTMh/w2yuDI5CJynSMj/2lidYxZfuBMdhKgPK5bHPpu7C2O4oJy/?=
 =?us-ascii?Q?Nc5U34MmamzXzaeFDR6C5a15lvKUeFAprWl3E/OfwgWpomuxLy3qTXRhlG3o?=
 =?us-ascii?Q?LtzyPpqNQbE8eEnFlEADh0UjZao84iukuWFxeWbrt7TJBJQraZwGSFRfrDMs?=
 =?us-ascii?Q?h63SJwCRwgBYeuozjMy750NF5h53hn8qNdcKALUgPokWUsi9rnmeZYUPkYMH?=
 =?us-ascii?Q?OTwv9rUnM7VQ1Iud/UubUy2X71yXRSQpHO1dpwL+nKoPVS9MLLCfpeTGALfx?=
 =?us-ascii?Q?9ZGuA/q2SttOP71hsiYoaQS3I5cY3Am0siT/+HDkbSbTqHEWale+pOW6auoD?=
 =?us-ascii?Q?Ds8k3PtkXfEKM4J7fN9NU32RE8Mx3g2MdrMdcpeuEsDXRUnZTheD/OSIFb2O?=
 =?us-ascii?Q?M6HdVK5LTwPAv+3MbY/KdpMeqbvK+y7nWKYLtIKQT2qGAb+95C36nbxfhfA6?=
 =?us-ascii?Q?NiSkrUszonByZkbFa0srUDBc5kCErOwwjirnx/mek34dJb/byZhU+rqGmsZx?=
 =?us-ascii?Q?nQ+BYKE2GwnUjfcOKQkIhYg6KCWG6slHp7BV5W9MbKJBDqLmj8NLGmDuAa62?=
 =?us-ascii?Q?4YcD/CVXOGcpSgTSK4aHkOEoAQp+I8vY6uKcyuB/etckoduaot1SdtYG7tiJ?=
 =?us-ascii?Q?tvOFqZ/ALUo8YuxvQp7iBQrpkWZafT+CC0AqcEMUwiUNR0Kp/zY8pz3bG6Rc?=
 =?us-ascii?Q?MrsN6LvtQw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4499d6b-77e5-46d0-e28d-08de5f6d8a3d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 19:35:20.9688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uVIbRLkQDBDNwgV5oGxGbW2HjHaMG2Qpv8qSjptFejTUzwCVggwdxGcW7dYlYNvnteqbb1NbdPieqmZu2QEoAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9521
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DE0A2B4078
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:41:43PM +0530, Ankit Nautiyal wrote:
> Currently, the number of joined pipes are determined early in the flow,
> which limits flexibility for accounting DSC slice overhead. To address
> this, recompute the joined pipe count during DSC configuration.
> 
> Refactor intel_dp_dsc_compute_config() to iterate over joiner candidates
> and select the minimal joiner configuration that satisfies the mode
> requirements. This prepares the logic for future changes that will
> consider DSC slice overhead.
> 
> v2:
>  - Rename helper to intel_dp_compute_link_for_joined_pipes(). (Imre)
>  - Move the check for max dotclock inside the helper so that if dotclock
>    check fails for non DSC case for a given number of joined pipes, we
>    are able to fallback to the DSC mode. (Imre)
> v3:
>  - Drop fallback to other joiner configurations, if the force joiner
>    configuration fails. (Imre)
>  - Check for maxdotclock limit for non-DSC case first and fall back to
>    DSC if the check fails. (Imre)
>  - Initialize ret to -EINVAL to handle case where we bail out early.
>    (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 93 ++++++++++++++++++++-----
>  1 file changed, 76 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 957a65795df0..a355900a31d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2802,33 +2802,24 @@ bool intel_dp_joiner_needs_dsc(struct intel_display *display,
>  }
>  
>  static int
> -intel_dp_compute_link_config(struct intel_encoder *encoder,
> -			     struct intel_crtc_state *pipe_config,
> -			     struct drm_connector_state *conn_state,
> -			     bool respect_downstream_limits)
> +intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
> +				       struct intel_crtc_state *pipe_config,
> +				       struct drm_connector_state *conn_state,
> +				       bool respect_downstream_limits)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> -	int num_joined_pipes;
>  	int ret = 0;
>  
> -	if (pipe_config->fec_enable &&
> -	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
> -		return -EINVAL;
> -
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     adjusted_mode->crtc_hdisplay,
> -						     adjusted_mode->crtc_clock);
> -	if (num_joined_pipes > 1)
> -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
> -
> +	max_dotclk *= num_joined_pipes;
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> @@ -2851,7 +2842,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  							     fxp_q4_from_int(pipe_config->pipe_bpp),
>  							     fxp_q4_from_int(pipe_config->pipe_bpp),
>  							     0, false);
> -		if (ret)
> +
> +		if (ret || adjusted_mode->crtc_clock > max_dotclk)
>  			dsc_needed = true;
>  	}
>  
> @@ -2876,6 +2868,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  						  conn_state, &limits, 64);
>  		if (ret < 0)
>  			return ret;
> +
> +		if (adjusted_mode->crtc_clock > max_dotclk)
> +			return -EINVAL;
>  	}
>  
>  	drm_dbg_kms(display->drm,
> @@ -2891,6 +2886,70 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	return 0;
>  }
>  
> +static int
> +intel_dp_compute_link_config(struct intel_encoder *encoder,
> +			     struct intel_crtc_state *crtc_state,
> +			     struct drm_connector_state *conn_state,
> +			     bool respect_downstream_limits)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int num_joined_pipes;
> +	int num_pipes;
> +	int ret = -EINVAL;
> +
> +	if (crtc_state->fec_enable &&
> +	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
> +		return -EINVAL;
> +
> +	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
> +		if (connector->force_joined_pipes &&
> +		    num_pipes != connector->force_joined_pipes)
> +			continue;
> +
> +		num_joined_pipes = num_pipes;

It's enough to track this only in one variable, with that:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
> +
> +		if (adjusted_mode->hdisplay >
> +		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
> +
> +		/*
> +		 * NOTE:
> +		 * The crtc_state->joiner_pipes should have been set at the end
> +		 * only if all the conditions are met. However that would mean
> +		 * that num_joined_pipes is passed around to all helpers and
> +		 * make them use it instead of using crtc_state->joiner_pipes
> +		 * directly or indirectly (via intel_crtc_num_joined_pipes()).
> +		 *
> +		 * For now, setting crtc_state->joiner_pipes to the candidate
> +		 * value to avoid the above churn and resetting it to 0, in case
> +		 * no joiner candidate is found to be suitable for the given
> +		 * configuration.
> +		 */
> +		if (num_joined_pipes > 1)
> +			crtc_state->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
> +							   crtc->pipe);
> +
> +		ret = intel_dp_compute_link_for_joined_pipes(encoder, crtc_state, conn_state,
> +							     respect_downstream_limits);
> +		if (ret == 0)
> +			break;
> +	}
> +
> +	if (ret < 0)
> +		crtc_state->joiner_pipes = 0;
> +
> +	return ret;
> +}
> +
>  bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
> -- 
> 2.45.2
> 
