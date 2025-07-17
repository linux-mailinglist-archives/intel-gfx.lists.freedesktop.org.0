Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89683B08768
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 09:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2E8610E7D7;
	Thu, 17 Jul 2025 07:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5xSSHdh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6B710E77C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 07:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752739107; x=1784275107;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=3LFxA9wMrB/gjXA1WZ2RVmMR5XYp38857hRiQLxjh3U=;
 b=S5xSSHdhG1/nZeOaHsNfcq1ezz2vl+KjGS3G/DK3bGXp7/KxDqbSs9rP
 ubS0EAM2InItngpdVbpa/eTe1oCry6GsR7gR6ohuUIrNmDsb1blGfMXij
 FsjLHSiG3oM81onFUas91fRh0q5BlITyYbxgvVhpTglVj6t8tInDCDj+a
 +MV7sYHst7W/Fd4J2jCCl5GfBnMHDM4XKerCpUcBAuEsVYIZ9OboBbQIf
 CMD9DiM+nggObEd7ggEXPWt9hWUgSvtmb1K3GaNmxrjxPbrDK3ubktSt1
 izNRA3Xirn7qjEtXwGdOz5JtLTcwzKNCX4dV5diuZX7fxjwN0R3ZYlx5K w==;
X-CSE-ConnectionGUID: O224AkgjTqy9rM5AmzZX1Q==
X-CSE-MsgGUID: hL+Ohh79QYWRFVTdJ/3Y9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="72570243"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="72570243"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 00:58:27 -0700
X-CSE-ConnectionGUID: CRg6n8iwTyGti1zd7Rvp/A==
X-CSE-MsgGUID: uqaoh4QMR5S0imETkvKcVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="157100772"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 00:58:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 00:58:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 00:58:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.85)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 00:58:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zS/cYV/AfVrziEQfIWdvEdolaW5UJ4GL2s2a2n+G1aKWyf2vwGETOPZQbJPdz6iyZ7MZUtKu0IXKwsjDprqXKrbTlacQNITO6BI7ZWEtCbDltAJVsWCOElyFkWYsthmFSvGlkr0QD2NTKWkxzFs9Qq6TZgWDJN4HlIgxHv+oTiWWg78sSfCbLyGiFbxy8SOpOd5E0VvOI4qNiCHf8ugcySatK9L4u6Rv0zXvrSambxhgKnsQCD57ac7I5PFLJ2bbg7HnhRx79szDfNUhz0Vl17sk7jUzLAop8UVbR8WmVTizGpf28basws6NLhi7Z/86JyWmIFQ8Gpp4tVMft5z06w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2sWdHO2Y2BRiX7WOt0g+tE3Kll7/pxdFTB0t6jjA6/E=;
 b=D7PkrInGfnWhUfkkfLPjDokk++/T8aJs2tBKmUNM1ZclMX7Jg6+NI0PBgA11qUNQr/hBNTd7hdAbAlmpPxH+0uaar5TtrrP0tIRzp2y71D+VmmzzamPRLICLuvxcdJANCKlzZRLlwffwsN47C4ti/WEOMEBi646KEd6O0DV1/G8Ljz5YdXqjDAtOkAxS+AWB5Fl0dtD99eoPqWCPrk7Szz6dDidGCfd4zlSDGdXObxrTvswfpLEcu4F5Aw7SYfiGCv1930ji1cmE9IxogTuvSSR5ofgQyBgBrvyNbPRulvl3ZWixbb3L5Bdl9OE2rf1slpbRRRt3YNjvEljYSY+kjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DS7PR11MB6199.namprd11.prod.outlook.com (2603:10b6:8:99::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8901.35; Thu, 17 Jul 2025 07:58:24 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Thu, 17 Jul 2025
 07:58:24 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 17 Jul 2025 07:58:19 +0000
Message-ID: <DBE65MGKVYSZ.3BBT6U2CJN2EW@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>
Subject: Re: [PATCH 1/3] drm/i915: Refactor eb_relocate_vma for clarity
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-2-sebastian.brzezinka@intel.com>
 <htvnnxraq3dichhoa22cvvhxh4qzv3wyg7gyxxdwn7i7gye37a@hig3vattgvdh>
 <DBDK1X31YM2T.1DZCWWEZYALZI@intel.com>
 <cetvl5iy2fhmaiwkr7lbsrs24afdke76vhcrxvdepdqvdujhvm@bc7ntlhdcnhd>
In-Reply-To: <cetvl5iy2fhmaiwkr7lbsrs24afdke76vhcrxvdepdqvdujhvm@bc7ntlhdcnhd>
X-ClientProxiedBy: FR4P281CA0302.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f6::8) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DS7PR11MB6199:EE_
X-MS-Office365-Filtering-Correlation-Id: 52c95f31-b16e-4346-b6f6-08ddc507b46d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eHRhWGt2cFF0aHBTVEc2WjJEMHlhQy9Md3Q0VERTUnp3Nk95NmZYbXVlVWUy?=
 =?utf-8?B?Q2JEMDM0S1ErVy9qNjhhcW1HbjF0OFRZemtuY3dSVnNFdHJrd1hNM0g0Snhm?=
 =?utf-8?B?SlM3QnErb1djK2JDZHJ2QnI1QkMwaEZFQm5xOXZoeUx2N3Q1TmhRVDlscGI2?=
 =?utf-8?B?Zm5KcjZJaU54ZGY4UnZSc0lSSHVYd0RRTFpUOGpGSnhicE1Nb29LWUVSNWpZ?=
 =?utf-8?B?Z2ZzYS9PT0RDRXpjZVh2Nlp5MkFKclZValJJWnJtckU0ZjFiNVY4ZlUzZFZM?=
 =?utf-8?B?eXE0K0k2dlhLdnJjK01TN09wWm83M2hTU1Iyby90RjlWUjRhQTRLU0VMR0Nt?=
 =?utf-8?B?Z3BaNTU5RGVDRHBJcytqMVNCbU8rYk1LaHcyOWsvQjllU3ROejExRXY4K0xm?=
 =?utf-8?B?NWs4d2RxSURRVStMVXdFMklBUWFMRU9kMUlYV0VaampwK3N1aVRPMGtQVXA4?=
 =?utf-8?B?V1NPVlFnTmZHdEVPUGU4allZUXM5R2ZYUXdvOHRGdnBTMEVHRXZnQVJLdG9s?=
 =?utf-8?B?ZEJTdUIyYjRNUnZPZTJUYUdvMDZNZUxpaUFGaGtZOURaaHVVQ2tjU0JkUDJa?=
 =?utf-8?B?cjhjZXFYVVpranBraUViNVpPL3lQcHZoRFBOQXI3MGNFSVNiS1ZmaTNjOVRL?=
 =?utf-8?B?WG94cFlESERiUnliYkZwTmxmQWVDay9JODhWNlowNk5JZTBwMEkxWHNTd1Y4?=
 =?utf-8?B?d2pXTGwwSVpuMFJOS2I1UFFTRmlCcndZY1k0WFI3Wnlkd09vYWFNQlhZTkdB?=
 =?utf-8?B?emsrZ2RCSlVMdmVBQTk1dGNTM2E5SWFaNW4xSzVWbjdaTXpYbXY4UVoxbk0v?=
 =?utf-8?B?T0loRG9OVjQzUTBDSlNQcVhpZzlodkhyYlMwRHBwYVlUcGRuR0hBdFVYamk5?=
 =?utf-8?B?MDdybGlBVEwrdGlCU3hiYVFVaHBFZ3FBb2o0cmZnaTZDMURScnFuY0dSbThI?=
 =?utf-8?B?b25STU9XdFA1Y1pFa2lydmZNdnRLb1lVS1VqY3lOYTFNTFFXNXVSZHBlSnBi?=
 =?utf-8?B?VHZMc21SRXB1dzlnY0daWEdEcnZDTG9uT1g1Wm4zc3pHbG1sWGZkOTcySGpj?=
 =?utf-8?B?MDB1WTRobGhFZ0FwVTV6YlkzN05VTXQ0TFo5U1hudGhKaUt0RWdETE9OS0tE?=
 =?utf-8?B?a1BzRTlSdlA4R2hPR2pOVVhMTWJ0V2xkYkU0d1ZJSWtHa0cycExQMmd2Q2gr?=
 =?utf-8?B?QUdVSFJmWFBwU2l6aFcva2dNY2d0RXc2cS8rNS9vMDNrMmhkV1BTaktxMEt0?=
 =?utf-8?B?RVo1aStsVXJONUhYQ0puVi8yUjFJR3UyRXhKcVk2V3lxNWdLMmJNT1c0Wjhp?=
 =?utf-8?B?bGc5Snh0V3pSbkg0V0lNLy8xS2cwWjB3TXdoZTlTaUtMQWlBMGtKVTIwd2lO?=
 =?utf-8?B?M1BvWDRXaThwcGZObDc2Vzlzbi9RNnlSS3FSQmpEWUd5ZHgvTVZyQ05waXJy?=
 =?utf-8?B?ZWRqM292Mzlka0FuL1lrZVc5REMwQ0ZOWk9oQWdaVTFnT09VS25CRU9nbUpL?=
 =?utf-8?B?Q0poS2xHTkE4bFhUMXN2Q2x4dTJXVW9SNjJTUGJpKzhpUkhoYmIrMCs5RDFJ?=
 =?utf-8?B?bmxxeUZxNU5MRDRtYllyRXlBdUIvR1QrUFFiK1A0VVg5Zk1uVk5YcTBZZStL?=
 =?utf-8?B?UmxFcElDQ0lIaEdwSEJOcjlkREhOa0xiL2YrOWVDUmtYN0swL05INkFwZi9u?=
 =?utf-8?B?bGpha0NKTkRRR3dKbmlqc000Z09LVDFqVDlNdTlUdmNvc2VMbUw5MXNsT1Nj?=
 =?utf-8?B?c2RpcmtuNDQrVDZkeUdhVzFBQkNMck0zWnVVVTNvUVo0TnJ0OC9mVjNYTWpZ?=
 =?utf-8?B?OXNRUGpUUHNPeStudU4zSVBESXJTRGJNWHBiYkxQOFRVakEwblNQYTdqc2I5?=
 =?utf-8?B?K3BuKzF2dmJ2SzY2a1hJbjF6c3E3M2lJcCtwT0RvaHZnVlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0hjZ1g5cnlJV3psMWVLL25Wc1AwNWRoc1RhTFJLVmxNcDBjc1ZYZHNaSGlN?=
 =?utf-8?B?NExOYXhnWGlHZGNId0JKdFVIYlhvcGp1VHJNcDY1YnZrUHRxWnJ5dmgzSDlw?=
 =?utf-8?B?U21Vb3RZd05BSVcxT2t1aUUwdnBKYWxEM1ZLeE5JWkNycjlYVmliN2FNWmFr?=
 =?utf-8?B?SUZTTGJFNVh3V3RISXpGWEdsYSt1K0RpRGc3Y1A4WkQyVzNmVlN4em9tZ3R2?=
 =?utf-8?B?Y1JYR0tLYkZvam0zTnVETTJIdWlKd3hSVWs1WmExSm9UWk82aHRQN2hUTzN6?=
 =?utf-8?B?ZlJZazQ3NDJKOGE3NGtlUHVJK3hnTWNuK3NNQldYQm1WdTFMVjBDcVZlSkhm?=
 =?utf-8?B?ZVVtTUJrNlhHYkRiTkwyZWFrSkFPT0RHRmRuSU5TbnJOMEJSLzM1SS9GTzR6?=
 =?utf-8?B?R1hmVkNPTFdpaEJHdlluU2UxeFoyYlRoZG56WEt5RFlBbVFDdzB2NlpIcTBV?=
 =?utf-8?B?c0I3Q0lFbnd3UVh2YTZLOHNUVk11c2tPWFhIMlB2L3l2c3hJQUNLS2ZjY3FY?=
 =?utf-8?B?RER1cWFuUS9GVGNxTE50Ky9lQUZsS1BiYURsU2dSaGkxQnpjaFRjYnI1d0Ex?=
 =?utf-8?B?aGZVNkdtRUpReVMzN2NuT3NQbmx1cVd2cE9Bc3JFZnltVmxra21maE8vR1hk?=
 =?utf-8?B?NkpTaGUxN1dmM0RrbWZLNHdRNk4xcGVGL0xkOVdSR04vRWNmbGNGTFNpbDFu?=
 =?utf-8?B?eVRacUFhMy9rV3hkcXlQWVcwWDdXNDRUM2ZYNW5nTUh6eC9LNC9DZzhvaHhK?=
 =?utf-8?B?OGhaSUVMVmIxUC93N3RGTzc4MkpPSXZHaHVNOXlhSDZCbFBJcjl3YzhxbUNQ?=
 =?utf-8?B?Y3lYMWorbm85c0NBNng2VG9sN1ZOYk4yOUFUdEpDaUV4UW1ZcmtTcnBCSE9W?=
 =?utf-8?B?YUNTOGxnNjRUSmFYMit1OGVQRkpIODRVT0RnSzdkWWRDc0Z0NUFTODZCT1ho?=
 =?utf-8?B?bTQ3OXJOZGNxNUI1enp0TTljaENwbGRBcUdpemxZWDZXM2oxRGpJYWxZOHpO?=
 =?utf-8?B?dWlZLzRYMTBKWWFndnBvWU9GWElUSnN0SHBDakhYSGl2K2VrejEycXRlM2VT?=
 =?utf-8?B?Kzhra0YyU0s2aTE3WStQc0N1WFc4NkRMeSs2UkFUendLdmkrb3kxdmVOVlA5?=
 =?utf-8?B?OHZKNTFSZGZ5S2hwWXY3L0pkSllGMUxueWEydERQSmt2QVo4NSs1dmFLRERx?=
 =?utf-8?B?eVRuY1FWSHRteElaWGl3M0tQdnRsbjRhQ0hpcUhZK1JmcEx4MG9jdUcvMFZD?=
 =?utf-8?B?YlNnWjcraGJPNlNpbmZ4R3JJWERtblFHYWI2eWJQcFBhRitZT0luNEZ1aFhv?=
 =?utf-8?B?QmFneFlPTXR3Y0RMZlJ6Q2hXaGdaQUZmd1ZwZnpiYUhDUWZNSVBaVDJ0bmcx?=
 =?utf-8?B?a3pWTG1maEpyOFRmc3NpV2puYVk2K1FGYWFQYjJocWswOFQvbUt1cUQ1aEd4?=
 =?utf-8?B?MkNwRzFMNlZ5YzNTY0lxb240aE4rdjVyaEZyclBXRkRVOGw5OUwzZnVMRU5s?=
 =?utf-8?B?UWRMNnloN3NQOFQwWExUS1Q4SFJRNFRpaU5rSzNSVEIyTHRlWk9oRmtZLy9p?=
 =?utf-8?B?T0pUQnNsajhpa2Z5UVlHbDJ6Tm1kNVdUWERJS3NTM1J4WWVYeWNtdkdub2p3?=
 =?utf-8?B?eEh3K0ZRT3U1UUJwbVNRYk5HN2xOUy9oK3c2V2FDVjdhY2FHTWFSOEJ4SHBy?=
 =?utf-8?B?Z2N0b0Q4ZU9GRlo5MkpyT2FoSC91a1Q1RFV2NWx3TUhEMEtYSUxpd3FNeGxl?=
 =?utf-8?B?N1NtdFRNWUtQUWx4bFhVM3c4TjFPWjNWVGdQTUlteTVTL1ZQZVBEK1FuV2VL?=
 =?utf-8?B?SEFmc3VrQnFGbHpXUHZFYkRHMnd6Szl5VU45WllIL2dDb0VRWkRCdGh3ZVVn?=
 =?utf-8?B?RXRYL21TZ1FMUjI4eEVzbGFrMWJPNzBsTGVQdnBENEFJY1MweEI1czQxdDEr?=
 =?utf-8?B?VHVYdmRzMHRaZHFYM0ZDYy96NGlzcjhCbmVZVlpZTll3TzBlcFYzaElIZnRX?=
 =?utf-8?B?dUZ6TXZEckl1Y1hXYXk5NFhicEhmNnhwd2FtVDlDcFJiRkVPV04wMlFhK1dh?=
 =?utf-8?B?dWkrajdTU2xTUTBOU2FZc2FzVEJhdWk1dE9mMzVGb3VuaUpVS0RiTERQNW9H?=
 =?utf-8?B?TGhpdlJmbmgzNk9vQ3VJNjk2V3dPaGRmcXcrZFhaUFpEbnRaUHV0WnBLSG00?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c95f31-b16e-4346-b6f6-08ddc507b46d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 07:58:24.0213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wWnzlakpR0TbeVd8ehHaJ7HHe3v7Ljg8eEyFLDDjkceypU6cOf8i7sEILERXSIfds5VqR8+1jlcZC1l6NcI5vd4zn6wA/Bj++r/0+Z9ZGLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6199
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

On Wed Jul 16, 2025 at 5:28 PM UTC, Andi Shyti wrote:
> Hi Sebastian,
>
> ...
>
>> >>  out:
>> >>  	reloc_cache_reset(&eb->reloc_cache, eb);
>> >> -	return remain;
>> >> +	return ret;
>> >
>> > now, this function is also returning a different value, not the
>> > remaining bytes anymore but 0 on success and -error on failure.
>> > Is this something you wanted?
>> Function still returning the same value as before, but now we
>> don't reuse variable. Regardless, the caller treats any return
>> value the same. Still, the return value is either 0, an error,
>> or an offset, just like before.
>
> Even when this is true:
Yep, the funny part is that you have an unsigned value for offset,
but it's cast to signed to check for errors and return, there was
no actual offset in that variable, just an error code,and I didn=E2=80=99t
really modify it, just used the 'ret' variable.

--=20
Best regards,
Sebastian

