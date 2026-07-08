Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LcDNFjmbTmoNQgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:47:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A91729AD1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:47:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=np4h0dFn;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD4910F215;
	Wed,  8 Jul 2026 18:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69B6810E64F;
 Wed,  8 Jul 2026 18:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783536436; x=1815072436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wzJVuTG2gm4ax8ohjsS52shabJ13ympI9zrztniJvuU=;
 b=np4h0dFn+SBg2KuX2TkA/5EQj2Ph0UA2GZUFS2ttxJHmOrwbNh9rZqki
 bDvZa0oEMoPrx5jynWIZvjDwHClAzFnREOkX2BBXaCVVlKEztWe3NJN6b
 uQWJkAyGt4q1i/I8WqCCW6BnAqEjC6AA9Q1hTsACcMmSti+zEfbTY7mHW
 QzSgDeP8yqIVhYUpMoGI8lIjLH/WIyZOBh2edmDAbivCude1EfrmNXAPo
 Xm2ldOHv2RaPyE8FEXzZ48ufdBySRVBzo6c9eBhOqK5JWscx2hfsoXP8W
 bv6Sa9ZT5fZdRp1n16IQZWJuyLV9NTtjwMxQMcidu/5izCUjt0mw6yNQ7 A==;
X-CSE-ConnectionGUID: RQP65FoyQnGps9VxWWN4Dw==
X-CSE-MsgGUID: Du8LDFb6Q/Wb2XDkIyHqBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88035892"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="88035892"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:47:15 -0700
X-CSE-ConnectionGUID: LAKKLOCiTJa3AamE6FRhcA==
X-CSE-MsgGUID: ew/5xlzATkyfr94B/UQPEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="253885064"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:47:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:47:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 11:47:14 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.22) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:47:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RSW0SWc6sqqgi8hpnctkmqiZzPTdabzqBn2fNDA9yXRxibvCFRqolgPMrjGei5R6VWZRWxMPGKxllij7h0hnmFhchwGbf+TkR4qrIKFYmcVWbfE71uJUN2VQ+KwH59kVGGcBvqklO6KhMuwVehaiJiu49taDBlN4W8fo1BrWNMbr3n+aZ2uJbQCzDCEU4l2Pt/VO+a5Pc11d4O2oCJ3b4vbfHNOZCLaqcbw71xB4cre3evJ52/A7mgXf2X91fA3JiehEsZMDOal0uIQMA9l4bfoxXWqYp/Cxk17IjS1OD0MT64Nr2xLksLFcqf3Y82XpxTTpZ6ssOpqlPKOF5k3+oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kOQUKvSE8zDP7hp+GlOVxhOEPqPZ3Pqt3XIpvLJfgPY=;
 b=gJohSx2jt0B9JhoPHAp5l4phOCEA7j4YMbvleDerEbqh6MmMeabCy+M5zuJd1Gb7SSIe4XBgRI6r7x1Er1mTyiRERxwg7UrhJFfGhuAKorsfSxbQC1pr+IhAmOozftSpEy/D7SM6u3o/e9VIg3QgNCgztAS+0aCaFL/WzoXlKoRkaP6Jvsj7qN38FfoZFinCvcz1b/3B3+lwChRvLcjdtqMJzf/RyG6KZk9b+4luS2o43w0/dUXlyKdHtDrPtR0ugX937DeTYuORtB24Ve/nGL+gGiTiXIuqEy6kePTu3vG52KGugBtR7DH60W+fChsZ6hq9Xnfv5nG8BuHc+qmYjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB8761.namprd11.prod.outlook.com (2603:10b6:8:1a1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.10; Wed, 8 Jul 2026 18:47:05 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 18:47:05 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 04/14] drm/i915/display: simplify
 glk_plane_color_ctl_input_csc
Thread-Topic: [v3 04/14] drm/i915/display: simplify
 glk_plane_color_ctl_input_csc
Thread-Index: AQHc/jxQv7FJCfu+YUOi5of9s0w9e7ZkF7aA
Date: Wed, 8 Jul 2026 18:47:05 +0000
Message-ID: <DM4PR11MB63604FC38197014C96CB3AB4F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-5-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-5-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB8761:EE_
x-ms-office365-filtering-correlation-id: 449640fa-a2b5-4d71-c395-08dedd214e99
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|22082099003|18002099003|38070700021|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: Neu+sHadebKvv9eJ1nBPMEKe0d/abSYQl3fG7d/WJQgr8mk0Ad2xF/DziKwtE0yLM55nFeE6Lx3W+0+PLex/wUHWvnAw8IRSmGuEaq5WMkaaKuf7MihBRbvwqu+oSpO1jFXUgkgR9a3BsjR+ZbmEO6yfvXjCasQeRGibe7FphgDwo+fHow3fNqsuDtnpLS/gxbOyV0uoQMHcHh8sD+Br8kzPj6xwSEqlH6jVBB8pRVaNaVcnmy6zmcyfkd1XQjaFxD6tpurzbXjiZ+3dNTTJd8PBQKoEQ7VWF0YflHPO/MOuGq3xjoXgc6BqvJQklmH7Ja76x1MtuBW+KN93BqZC6hZYMxiiA+r9GWuuuZmI0NKdH/VXQZw+jIM81YxOa7P/K17eh/FN6AIimSkvzhtREN3XNEwqN/ouO+gTiOct6gcNID1fBgNSz+zxUY4YI9xt9CVMeM6PCmFDcCRP8z/2aGD2aYbotWNg7KWVVvi0ADHvbUiDChbHmPlSO2LqbqEzx3whb2lscYyTaqtOAVO9oYJO4u3BOFcVWYKBp/xlDgN4vFAnG2GeK1gbuZg+xlPmBcGN76nokBkk8CV22F+Ear5qJfC7xrgAKHcvD68g8r+yeqzxAuNFSZ7s5ClT0MMmB5SNq2EBgy7fvQwhCw9yksoisqsSC7p+afBPOslsTwAvh9SxQekjqPjEYqBCToDsqVEB+Z4Pmf4nz/bWqS/xvUHUM1lvMv5dDV3WjzBMqWQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(22082099003)(18002099003)(38070700021)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QLeTQSM5qeBIjEPtLffSGmczPwClOgouHgARI/JpJRBWX9Bqvk3UaCGhrukg?=
 =?us-ascii?Q?XL/XPUpzNZHHYrHIdxo1K5sIUMhX+nirNFAAILP7aPf9MbtouYFczneYIotb?=
 =?us-ascii?Q?Ojeb1Akrx4MRLHnVXi3awl7gfz/U2m2bnm2IW8jSpduahmUNqt4WJNSh0akC?=
 =?us-ascii?Q?ikOaA0kCvyuiETQ/GVDXeCbTD1JQuXM0aduZEu3PSK+sPP6BZLV9AHXgm8ny?=
 =?us-ascii?Q?2r+qlSqc11q9WWSh75eBOQpnrqst2m3vRmblwA/B7t9zhcVcDyVIy2ekK5zc?=
 =?us-ascii?Q?cfHFXBxSEhfTlX9TpJ8SgMiquPRG+9bQZcE4BvW5ny/urNAoT1b5fhloVMJE?=
 =?us-ascii?Q?1agWhF8HdX1n9ZpZxUrqX2b+1hjZq1DrNUP9sz5+au+lftBUaXUh+TeJyPCL?=
 =?us-ascii?Q?ONc1eZDzmDhdih6zGFTrltbvGkMf1tf9wPuVkaoLOT9SaNQep0OeJW9nwz42?=
 =?us-ascii?Q?4gelk3NyPQPrBR8oyiyIileHMXRXL75w4EGXnr+WaWwGQiM2FqFSOtRrwTds?=
 =?us-ascii?Q?JuioN47RAiRu7KuxP9XLOXEmpwiaIbyB0OMnPhxpoXURh/iaE55IXnj5ZsGR?=
 =?us-ascii?Q?umGqAcfifcYpVwW0YsAZD9EidDtDoZJJEGJ6lUOBGxBmWB/KegG3/s7K2hNL?=
 =?us-ascii?Q?qKkPjygcW8ne0ZPDU6c9IRfY6+nbgUUT8SkZuIZJ49NZ8RLb9+/hgKnJ/gQl?=
 =?us-ascii?Q?+hr+mIvYAMP0ivvo+vq/EBEK3HRA68mwfLFUEDMyD7+x1saF/gjAOQQUzcZy?=
 =?us-ascii?Q?XoeQJjYXq47y5b8jyZnqAlqZTNEqCJPCeXmfsiP8Ic0/Re0OK3bAZoHX+Lyy?=
 =?us-ascii?Q?xqaJ1Bxz1qFX7+RtyDjNt2ZZ6wNvuYUqFqBXuy/u0G0Y7JU2eZYiynTy99rq?=
 =?us-ascii?Q?rQMLx6brSbb+yKWSBDTvtE+xnKZjTrHYhfyf/P1PQAMyBQZd4SM//ygqhQGj?=
 =?us-ascii?Q?Ozpl/8RerGWMHuTIUOOgp0aiNKxJrjeS/NfMVmVZRIFIEE2jgmHjBEb5XGb3?=
 =?us-ascii?Q?WM6H8I4j0ALkG0TW9xALYDzRWUIKobRel8YyY4TojNJ/9jZn6btqUon/mRpU?=
 =?us-ascii?Q?e+S4ir/JU6HMlKti8UcGCQhN7UeERQZqPXUdHJ3KwSIl5yAPpT+QCO0Br+bT?=
 =?us-ascii?Q?1RfjcAnOHKfOCCaIABhDQ3+1w2ac36xXsLImeC8ckAOl3BaRlTyo2/twc/wR?=
 =?us-ascii?Q?MSxk082Ow9X50v55oYJkZ2b44PGuf36GLbOOc7WbrCEP5v9MUMFplz7AdMe2?=
 =?us-ascii?Q?gFvv2KVpI+T+vDh+fAEMQY1ll22h0a6Hi0JANJY4jlxJmVz1STMoG6vCpdtH?=
 =?us-ascii?Q?BGepTRvpcksfD0kGqncZD3jGXO/K49CV5oCKAAm1+ti0LdiyvLg0Fc9cfHzy?=
 =?us-ascii?Q?6ZDEH1RGclUCH/MqPUCzO/mUlBLvh+rHSd/bUgJd9n1DLG8mDG9PF6b1HPTt?=
 =?us-ascii?Q?UdvwdS4tsI4H64TK3AmBGYTNtrL2RY3i6zbiIYMztZlN9nKWP3x9T1e6EtYf?=
 =?us-ascii?Q?7CyWzycxsh7bgZQA/Y+tqaeOl9uG5ZSghwVCM9Sxa4reoOVVJcAOPs7tHroC?=
 =?us-ascii?Q?newBxcVxnGqo2uLkPd+N7hcLXJoMXKZ0IdNvR7yGBh519ToCIbi9HQ3IU0Ne?=
 =?us-ascii?Q?/Wn0xUgx2p+B+Yja+y+zKdr1tZ9RGFsSzDi4qhPvZi80+on8ftuxz6yl1z04?=
 =?us-ascii?Q?rHZji1xJpCgJ/ZG1voAeR3QybR2fW2eeOFic+UdIDuEMoPjy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OxBxtuxOq/yHljpJ5ySbIUICHsqSazYLT/OtSNsXQ4d90B5eusZ2C4ZIAt1x8AgNySoLPdexM2FGwB5/0wEl7rCDWihEI3ObAzcTXE8zm7/mBcB0lmYCWc7jRSsnZxigbXLnhtYubszwPEonIvIzf/HcsdgpMu5g8sffbCYfBuMgAgHGjX9pVykujVM5WexXFXohzDKOPoDYx/buPWAKoiSLoJMzadhurlHhlEyqQwFUoRoPsY5ID7fyamaAc1UnyzuU9h6t20TPADrwTG98pmihck3z3u4CcWXjDlg5TS3l2l1gzyrIx+2SRNDeAk9GMxtmot1GQq4fycEJWx3ciA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 449640fa-a2b5-4d71-c395-08dedd214e99
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 18:47:05.5165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oZEu3Dxx/Gkw60aQGUuCWAIY6jpS31JZNDQxMms2Av91tJkdZhYeBSsmLuTTKqow42O0YAZek6J81K2CnDWMJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8761
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05A91729AD1



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ch=
aitanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 04/14] drm/i915/display: simplify glk_plane_color_ctl_input_=
csc
>=20
> Add early return for non-YUV formats and hoist the duplicated color_range=
 check
> out of the if/else branches. No functional change.
>=20

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 50c6ceef9b9a..da2df5be9848 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1247,7 +1247,10 @@ static u32 glk_plane_color_ctl_input_csc(const str=
uct
> intel_plane_state *plane_s
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	u32 ctl =3D 0;
>=20
> -	if (fb->format->is_yuv && !icl_is_hdr_plane(display, plane->id)) {
> +	if (!fb->format->is_yuv)
> +		return 0;
> +
> +	if (!icl_is_hdr_plane(display, plane->id)) {
>  		switch (plane_state->hw.color_encoding) {
>  		case DRM_COLOR_YCBCR_BT709:
>  			ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> @@ -1258,14 +1261,13 @@ static u32 glk_plane_color_ctl_input_csc(const
> struct intel_plane_state *plane_s
>  		default:
>  			ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
>  		}
> -		if (plane_state->hw.color_range =3D=3D
> DRM_COLOR_YCBCR_FULL_RANGE)
> -			ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> -	} else if (fb->format->is_yuv) {
> +	} else {
>  		ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
> -		if (plane_state->hw.color_range =3D=3D
> DRM_COLOR_YCBCR_FULL_RANGE)
> -			ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	}
>=20
> +	if (plane_state->hw.color_range =3D=3D
> DRM_COLOR_YCBCR_FULL_RANGE)
> +		ctl |=3D PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> +
>  	return ctl;
>  }
>=20
> --
> 2.25.1

