Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9034AB076C0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23EDC10E289;
	Wed, 16 Jul 2025 13:19:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFnb/sMg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FDCE10E289
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 13:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752671943; x=1784207943;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FDEmnQHTD5QMJCuGzL+OiPGJaHSOTO9A+iPncgGhupY=;
 b=OFnb/sMgG6lfSeOJaqjPdtvKP2PQEaZmdu7ijEFHzwnYNaWPIb03hcqo
 trRhqtN6M4TJ7HLasupIsQuqMQDKRafKcCogSlVhiNvCdLoFTgB1eog/M
 FLBH38up+e+QSKmIH35aWs196cfu0OtCk7Bex50qRS4LWykDndySqEiCB
 y9a82pWOPmndMLCb+TdopKxM499Uv0/00E7TbkyhUVDOl3w3R3gKgD+k5
 6WhWZ+6trwf+D3mEaludTt8wc5B6pGRHog7zQD+OdwDCisRkXRnSETDvo
 nKKzLCNtKVLL9RPlEGdItwTxsi6MARZ5nP68sEYrDOWivtohC1Yq6Kk4C g==;
X-CSE-ConnectionGUID: fcUAzMPWRhKYU5SYkn5X6g==
X-CSE-MsgGUID: 8cTz2MJbSRCVQYyzaD5A3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="58686079"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="58686079"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:19:01 -0700
X-CSE-ConnectionGUID: 1clIu5DAR1+AHDzK2JCmow==
X-CSE-MsgGUID: eV5ZF7KcQ/mIp9UkUhgJWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="156894958"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:18:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:18:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 06:18:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:18:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xK0gyz3y1dpIsJGDwpv44/yldUhWokXp8ocJX2cOGoSsxKJhsNjji09Ikm7o7ZrO39bM11nBGz/d97urdoJb7VzImiTf5NULvyOSOFvPaxx4U8jIv6xkSK0MMNeeAZE502XyeljYKp3FyTqEIBzIiBP98OmBz22ORrv+iCtk+fETNMoY4WActdrhcnpoV+SXCdSd9AQ/y29uZ5DpHeJ5IMsW1dHFHK9tERBQIYA3HU2dKTG7kNnLcq8UQRIJzL5nmfhHG2NvTXsxGpuqtdGdn84Mpgo2G1ORCf4FN+Aefx+bJfP57G5QpUCwkNF0GLTyrCYbakVhQhab02o/vegwNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oD66IBeQHePFCEdN9a7c8ENubbgHyt29CbCuBD/h5io=;
 b=n0seDiqpOzSjbr3ofpFo7ZA4Z5lC6eXyenjKZyoKPesi5KG16lrE7tWYNdgBKmS2b4SFyKqs1g/bShGA9nyY2sASO3l6ByIJfK+iRivGN3K+h4WreJeaXgSLtdgBkFoUzNp89f88maUwEoTzM5IhwLpK48/SxRQY9lx2X8M9X2tpKZMh5/nJPEi9EVGdMZytduoO9tEIjJOMExgQImV2Bw7V/4BjUFPDhGRwfEE5io2PpRs8XQlaR5UEX5gTqOL/hGLJYrf6LDTbV5QQ49F8lM03Mz1qUiZ14hRbtt1wajmmBQbgBSP9cI2JN995uFapctKMutLdvpfJMrj36RZ1oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7187.namprd11.prod.outlook.com (2603:10b6:208:441::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 13:18:55 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 13:18:55 +0000
Date: Wed, 16 Jul 2025 13:18:46 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915: Refactor eb_relocate_vma for clarity
Message-ID: <56erbxnporl5d7zb6c6m3bs2qedk7cxd2jl2jvoqjm2qhg2v3z@4ylrp2qkzahf>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-2-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250716093645.432689-2-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: WA0P291CA0011.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::23) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7187:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fb59537-e6cd-4ec5-75fc-08ddc46b507a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWp1bTBhTmVhL3pwenkvZlc2MUJkWDFtTVNoY1BmRDF6VTlXQzFlNEdkMVN6?=
 =?utf-8?B?QkRvVHZkdUF1bkVzVXJiK2hxM3JQVmFNZTNpd1VnSFVBd29valZWalpOZThK?=
 =?utf-8?B?VzNsWUdMQVpMWXk5OExWUGdGZkdWanQ0dlg0bkNzS1UzWERDTlkvV1dQYndF?=
 =?utf-8?B?M1IrSmFoY2U0eDlOTnlGbE5vRlpxNkpNYUN4dEg0V3FBY2lmU3lNelluN0Vv?=
 =?utf-8?B?SXN6TWNjSnd6V3dPM244N3RXcTNVREhhb0RNMmxTdDl1SDhmamdMN1hSNXZR?=
 =?utf-8?B?b0ZhZDc0WDRHYm9FcndENmYzOEhqMjk1dm5HSlBsTm9NSzhWN1JTbWptcVBH?=
 =?utf-8?B?VzczZy92UFpIbjBPeThybUoxd1lmR3dNWmE0SGhSLzR6Z0kwVHRHcHdTYXVG?=
 =?utf-8?B?YU5pSjFjc1N1dXU5Ymw1U2UyVzVZa2NrZHlzUmZPLytiellFeDNLRnMzZjJq?=
 =?utf-8?B?UDFHMnRianREY3U3UWd2M1A2d3dIQUVDM3hxbTNKOVZ6R1dGNmdRQWVxT1B4?=
 =?utf-8?B?N2xnZnV3RnB6TVIvSS9nYzhPRFNsa2VqUEhPeG9YREZzSEdzalp0dCtGeXJI?=
 =?utf-8?B?RVR1ZUZ4dHNBSVhVRTgwaGRoZUllem5WU0FQZmFsc0FtUFVtUmZwWHlRUW5E?=
 =?utf-8?B?eW80Mmw1eUc4Nkd2WXFIaFRJUVBqTm8vUWtCUEliVXlOd0tZQmxIbnlNMWFD?=
 =?utf-8?B?M29uWXBMR291YVZLMDg2bmNLTTgxSzhHdXZKZE9iaG1sYlZudUdOeUVRTjlL?=
 =?utf-8?B?bldCL2RFY2NNSGNEMTdpTmxkTDY0QkxFaWRxSk1yY3lyRDhBeHdRVHhLMStP?=
 =?utf-8?B?N0xEVXBTcUsvREkzMlJoazlRRXVuaXU0a28wTlZ1azJmU0JoS0tVaklZR3Fx?=
 =?utf-8?B?L09BbTBLS24wcHhBWXI1a2RCdXY0anZ0TVV6eW5jR3JxR1NlZ1lwTWNYeXhn?=
 =?utf-8?B?NjRDejNZWGxTN3dCdVF6aEtBRVpLZTJzVzVadmlzZVJGMjh6WDhKNkwxcDg5?=
 =?utf-8?B?SHozNWd6N2pLRmp1QjFjTHY5SFRhckhGK0tPZFRWQ1M1VUxtT2Q2OEN4VXpl?=
 =?utf-8?B?ZHRSWHVXeVFHUjN3SC95bVh4UjJsUytpdjJQQVBGWFdGVGh1N3huNlR5dXRr?=
 =?utf-8?B?SHZTMzZRU3Y4RC9Wb0NybVd1ZGMzc2U5VjcwZHBPSXVYc2NmWVJWdWNjSGtD?=
 =?utf-8?B?R3lXdHFUVHZvdUdpTGc2QUdYMkV3Rkd2VjY3YWRUL2RKKy8vcVFCZThvVlRO?=
 =?utf-8?B?alBGTGxUUDJSL0J4amx5c3dVNTZNMkdmZWtpc2N1dHNsRFV3M0hZVDY4ZHF0?=
 =?utf-8?B?UkVybG15Q3M2Q05VdkIyNzN6NG9sR2JPbWRZTk5UeWI0RTYxY211NEJ1c3Iy?=
 =?utf-8?B?V2pzQXNZNzdRcVo1Y2ZpdDQ2QnBOc1VIemxlQkNFTmE0cEM5N2tkOGxTV1A3?=
 =?utf-8?B?QjNybTV4eWpEMkE0Q01RSFJMaldRdlpMSXExeHdJWllHdWY1V0JQUVVsVkZP?=
 =?utf-8?B?eWZQTmdPdGVhR09WaFRwOXJ1K3E0SU9hditQQTBTSk5BMFVhL2FZaHdQdVFI?=
 =?utf-8?B?YWRBZDVHTGdzTTRlNjl4MVVJbFdxNldzcTU1NnowWE5LTGM4My9oZDRFbFRn?=
 =?utf-8?B?MnNYVjdlK2FXeXExYlE2Mm9uSnlDdEJCTzFvYUN2eXRJZThKaEhvNkovc0w4?=
 =?utf-8?B?RmQ0VjJ6VXlmVFJ0dFRmaUo1TzY4T21SUnl4dXJTcTYrcFdKT2xHMWFRdmdv?=
 =?utf-8?B?NDdGYUdLL2p5Q3ZueHA5bmEzbE5UVTA5MWo2bXlGZFQvWWRBRVdhVnJJZ2Qv?=
 =?utf-8?B?UTh3cTlNbGN6ZEN4KzIvNERwR29rUWhkNG9NR2loL2piVmJ3S0luTFBwTFdH?=
 =?utf-8?B?WXhLTXpjQjdJYzlGU29WY1RhQ1RsNWIrMlJkZllSSzJCN1QvazM4emVkT1hm?=
 =?utf-8?Q?GA53a+h5P6Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0NKaUFiUlZTSmNWU1NTYmZuOGY5SFdCQkRDWHdOR1NUdWFPdWZORDJGcjV2?=
 =?utf-8?B?WTA0QWYydm13dTJTeUZ0cGNud2I4ejRML084ak41YW1DR3QvNEVlOEZ0bUND?=
 =?utf-8?B?K1U3QjRueUpERkRycUZvaHYzQWs3Mkk5aElsODVHS1JCbzBjeS9hc3VOTjJl?=
 =?utf-8?B?Y2VJRU9kMWxETnZVL25PZ1k2azNaRS9TVFgxd1pEc280QjdXcTM5UmNBL0Nr?=
 =?utf-8?B?WU1JQnZhQm1VZHRyczdmbjloKzJKbGFOeFVjUmsrUXYySC9KSEs4MDNDdDlB?=
 =?utf-8?B?OVVYb3RTTHoydEFvT01wSVRZK3drYWtOckprNGxXRThmcWpxZlJ1STQ2K3E1?=
 =?utf-8?B?bCt1YS9TaytvZ1JZemVtUWx1MXg5UDMwalNscEtFQ2NWWE1qNUlqN1ZNVlEw?=
 =?utf-8?B?NWZOOVA0eXc2bVZ1WUtJTDlkdEtvZ05wZFVNUkJ3RGltdGZBK0h6SWhOeWNq?=
 =?utf-8?B?bHBpQ3N0MnNiVWtPWHpLZ1VRN0xJOWxzM1ZRK1FINy9icEFjaGplcm1NdTRT?=
 =?utf-8?B?eHNHdzRXbmdiN0VQblE1d2IvRThNdXhsek9HUGQ0THNsUWczS2dNb0EyMXk1?=
 =?utf-8?B?Q2FzenMvSjMrNUVDbnQ5UW5qN1l6VXZzQnNSMCtZeGJQczRZQWhVV3FWdCtw?=
 =?utf-8?B?c29MamlnNk82T1piZW03UnBheTNielUxcjRnQXZBT1VpSmFDUGh5bFNPWXQw?=
 =?utf-8?B?YmhDU2x3bmN0NGovK3lWdCttSmhZYk9wbEtUT0Y1Z2FkaHQwUW0vamlVdVUy?=
 =?utf-8?B?OUhDRStkQ1NXeE5CNlZSelVGajloVy9GVFJ2VmxVK003YlBrS1NnUHkyN0Fy?=
 =?utf-8?B?VE5jYk9ML3NiTlg4QTFjOTBNem5HRHJoL0o2WjBHM2U0bFNxOFdsMG5WRlRN?=
 =?utf-8?B?N0JvS3gyUWdLMGZ4TG0yNkM1R0FHZWFpZ1NaeEVzVm5Rd3hxMllnb1BnRFdM?=
 =?utf-8?B?cnc1STA4VDVnSXdUUjFOOWNITVR0enBNUmtTbFJwTGRVeUFUaE15QWxwalVT?=
 =?utf-8?B?L1Mxc1pNbDdEaHRmR0tjamRFZU5uWWljOTBiN0hmUmlrYWxtek1rVGcxOXJJ?=
 =?utf-8?B?VGh6TldZajl4N3RuME9BNmxOTGhhU2t4dyt0eEM1T1k1TnBzanNaSDNMZW40?=
 =?utf-8?B?S2UzeXhuQTdzQUQ3aHc1QS9aWFFwejJVSno0UVpDMWkrQmRHRmthaWIxTjV2?=
 =?utf-8?B?TU9GYThFNnY2MytjKzJXbGR3bm1US2hOT1QzdmtMQWIwTG1BVHYrQ0E2NGlr?=
 =?utf-8?B?T21za0t4bVpLTlU5bzNVc1hTQm5yVkNpNWwvU2ZSRXpnWlpLdnZmclI2aTBh?=
 =?utf-8?B?WWVFUmxvYm1lalVZTDFXeUxxYkJlVjZta2h2L0tXL2dmTmdvQUNIc1FmMnBj?=
 =?utf-8?B?ek5lYUVTYkgxN3djSTBVRTZFUzc5aVU2ZWZQRUtBYmNxcVpNZnJiTVNqYjU4?=
 =?utf-8?B?WVFzOTRpS1dNVzR1Wk5OKzBJOUFkNXhacEFTaUpRTjBDZHMzU2IzMVFCRkI1?=
 =?utf-8?B?WHNONHNZN2NTVlQzL0tzQnpsenp1cHNJZUhlQjhaU1JTeWVXNHREOW9JRXVv?=
 =?utf-8?B?YUVacVVXWi9Ed3NzNmI5NG01cnpTa3FYSlJtUXNIS3YzV1hyL0EyOW9ZL0FC?=
 =?utf-8?B?blBsOS8zR29STGtCcnd4YjQxOGQvYXJnNG92akVyYWlETEtMOG1BQUVWYk1o?=
 =?utf-8?B?NlltZHNrNjJWNFhVeFh4MGd5QStRY3o2em5jOUdCWEZJcVZ4aStCWXp4TTUr?=
 =?utf-8?B?R2ZaQVpNeVI0NlVrZnU5NHVWcThsVzNybVJhNkVtSGRLcUpsMUxXcElyQ0lu?=
 =?utf-8?B?Q0lXT2JuRFZIU1dsdi9OdGo2TlF3UHV5QlpLK3R4Z2NkNEVRVEMwWEMvY1RN?=
 =?utf-8?B?OHlxdHVOUTBQQ0JCMTFMWWRaZWFXd0E1OUFVMkhMK0ZqWG9IZ2JHckJpOGZt?=
 =?utf-8?B?Q2NBMjRZSlhZdmM1MFZxR3plclRIcnJ4Tit1WUJWY2NUT3pUQk1YdVNKTDNG?=
 =?utf-8?B?Ni9HTTZOd0licURCNDRMcXc3QmtUNWpwWVZXNVZaZlpMVUtCVEQ0dUxjeFV3?=
 =?utf-8?B?RVFJUEM3TkNNcGtyWFkvNkxGTGhrNytIaytNWE5qcS83T0Q2Sm9QYTN3UDZI?=
 =?utf-8?B?VjFRQXFUcnlpR0UzOUJ2dmhaUTFNYnlQOU5IMFBFckx1VnlwbFR1RkZlUVYw?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb59537-e6cd-4ec5-75fc-08ddc46b507a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 13:18:54.9179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NR/ea2WdbtTmL7LPY7cCOb6D+A2j8N9dY2hvYAP8QInrF8lcwkJIlxrz+v4NlUII9RZ7rifl0GZK99GErKAFtIOJ2WSwTfcttuPr9TrwQHk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7187
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

Hi Sebastian,

I added a few remarks below.

[...]
> +	while (remain > 0) {
>  		unsigned int count =
>  			min_t(unsigned long, remain, ARRAY_SIZE(stack));
>  		unsigned int copied;
> -
This separating newline prevents cluttering, so please revert it.

>  		/*
>  		 * This is the fast path and we cannot handle a pagefault
> -		 * whilst holding the struct mutex lest the user pass in the
> -		 * relocations contained within a mmaped bo. For in such a case
> -		 * we, the page fault handler would call i915_gem_fault() and
> -		 * we would try to acquire the struct mutex again. Obviously
> -		 * this is bad and so lockdep complains vehemently.
> +		 * whilst holding the struct mutex lest the user pass in
> +		 * the relocations contained within a mmaped bo. For in
> +		 * such a case we, the page fault handler would call
> +		 * i915_gem_fault() and we would try to acquire the
> +		 * struct mutex again. Obviously this is bad and so
> +		 * lockdep complains vehemently.
I think you could leave the comment as is, because you do not
modify its contents. Furthermore, this modification changes git
history for these lines.

The rest of the patch looks good.

---
Best Regards,
Krzysztof
