Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 994D897F184
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 22:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F98710E48A;
	Mon, 23 Sep 2024 20:06:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ehLYQJyr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5319710E48A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 20:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727121976; x=1758657976;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=RQp+uid6GncphqtFZkHnnSHmedUArr2rXrx+g+68Vok=;
 b=ehLYQJyrudtIQkN2AhrEi/cN2uMDMK4mxVOlJGgCNMMExgLzXeoDa9Mi
 xOUsCfWjbPPP/5cMwZlVqxMEKNzn+E4PdYfw2/ZhFzkDKdNis1NJ77J+J
 Sfb3rSNs/hGmWPpDk2T5hwJqyJS0clrElsKbzF/HPe7Ng5aJ5BjDUuF3e
 yanrUUYJH0sHbxsj2HBmbxYAXGVQz9Ty7WKW8lmr1/urRTWUEVIdKWpyw
 Xppc/CrPqs1SyGMI7gIha2baqWrUOGBGU81gqXiSWsWl0iDUJLOAxU08H
 fA0oyWONsEiPsErmE2yr12FiauM0qdokz4jiSPfjx52Me1N2OGz49HuKE Q==;
X-CSE-ConnectionGUID: 8J3NnAJdTr6LFsJsRgy3Mg==
X-CSE-MsgGUID: 8lhyV8o7RDKS7C+8Q/kBvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="28983743"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="28983743"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 13:06:16 -0700
X-CSE-ConnectionGUID: pQvdE1FBSjW9dj3coKFwvw==
X-CSE-MsgGUID: W0Nw7gM5TtmQutAhPJwzHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="75557384"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 13:06:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 13:06:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 13:06:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 13:06:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CM9CLRUc3djHe6+iWIsVggF0GUGZRJQeIZLbrMY7LUnUjrBmY7HnasgoIdJj8O415qIzH+c4cgFlXOkC1SC9njwVqtoHSgWYRjjg58hC/b+Zy/7LxwUco9eNT7H10pQukgE/znYDkeud5ZAfvcSQR44RFCYb7KOEDCNzS6Uk5AJ8ML7NFU1eh6i36qgQAkt+/8KEoWhMgWy8JsfLtpAEle0qsgGoBdiHzTsm+2wbyKKqmXViTvhnMJcm6UmGKF7d2l8ogOtiVG00lt2ob0EY3demJ8Za8bH4Kbkvh/ya3QTTUiK2UGHaRWtc7BDhFB9aWeZHR4HT9PiezVVNggIoyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sluWpMxMYhJQty8LPINtcbdFYx759vsF6E7mLGqwYkE=;
 b=HDRMx46+i9t8cXHNRTv0zqHQVHW9aD1SBvnDrjx9OlrzwblKbuSj3VFfRoMfeRX4ngkCxHHBkpoqyvFj2A7Asamd8qB08+rZOR4QriNHUhp9qeGMH6KUfgwy7azqVOkyl4OBfXQK3x7SQNi6iXIb2n/ts5UiuSkFzrFcwWV/lTL5adC6lcNM9r9+xRXMSMCEVzMpqIqeQderrQbM2Tgisoy3eONHX8Nm5vxYI5QWhxMJ/efghp/4+f0XCFrkZMr+ppaYQlHmCwaGO4X91zq6stF/1A/h1zNNfpLraZ974ajQeVwQLPdXZw1kNyfUkw9gKO37Mzf5NrLRQZq+/gRjdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB6152.namprd11.prod.outlook.com (2603:10b6:8:9b::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.25; Mon, 23 Sep 2024 20:06:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 20:06:06 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZvHAL48aC8P-Lvbd@intel.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <20240923190324.83013-6-gustavo.sousa@intel.com> <ZvHAL48aC8P-Lvbd@intel.com>
Subject: Re: [PATCH v2 5/5] drm/i915/display: Cover all possible pipes in
 TP_printk()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 23 Sep 2024 17:06:00 -0300
Message-ID: <172712196055.84255.91494974908186120@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0230.namprd03.prod.outlook.com
 (2603:10b6:303:b9::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB6152:EE_
X-MS-Office365-Filtering-Correlation-Id: 66476963-fa4b-4e25-177c-08dcdc0b2869
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nm0zZitWc0paeHgyRTRManJOS0JFVG10ZGNOZVoxT1JRa0xxK0ZlUGdjMVBO?=
 =?utf-8?B?bTZycWk5by9LZEszV205cFhwT2RnbS9SZm53N0hZWnlVaFJWNW9WcTRLYXhI?=
 =?utf-8?B?ejl5VTdMMnpOL05USWhEMCtoQ2c4ZlpiaUp3bkxNaURqTU0zS0QxeXk5S0hP?=
 =?utf-8?B?MThVSmw0aEhucHVPQXhVME11RWxFQnkxQzVQM2dXNGxyaVhaT1NDWmw2N0tw?=
 =?utf-8?B?OXlMQTdkSGlCOXdybk5IZ2Ruem9Edk9SOVBZanV1ZHh2S0VHMnhqN0pEZk1M?=
 =?utf-8?B?YkNZZGZFT3B1SktSblhlbzJSanVoTG9pSzJwMTFyOTY1dGFPcTh3Nk9La0tM?=
 =?utf-8?B?UWt0YWZwSUo5aGxiNTRCSXU4eElJQzd0VE5KN1FJNFkwYUdXTHk5Rzd6WExO?=
 =?utf-8?B?TmNiOWM4NzVNUUlPcGxGcjhjWXdzS3J1aC9HT3RlV0h2aE5KdTZaRHpIdDNQ?=
 =?utf-8?B?dXhRQ0p0MHhYbVVibG14L2lIY0tCMzdvc1JUMjJsVWtUV3duV01oUzZqamJB?=
 =?utf-8?B?MFVBY2F0VXYrUjJzSlJlc3NTbkRWeWg3LzBKR1NFZ0w0OHprU1pXRWpkRFo5?=
 =?utf-8?B?N1pyR2dMUjQ5VmhqbmhjZFVMYVFoeVFOcHpxa3g5cXNhVlVZc1h0OGVvQjRC?=
 =?utf-8?B?MllxVmJzaWNqUHBOaWFxK0tsUmNlMTFtU0x3c2VSQVF3S3I5OG9JaVA5S1JX?=
 =?utf-8?B?R0lrdG81dXhGQ0V2U0s5V25yZmRqN0hjemNNMlp6c0ZVaGZxMFVremFzYndF?=
 =?utf-8?B?WVJob3NtL0lTV3RESGVOMXZvQWFkUFlUelQ1NkE2YitIbTBxc1VNYjdxNXhD?=
 =?utf-8?B?MXFaUzNRTlFRVldRSHl0TEZaREYyMmoxU1hKb05DN2YwOUUvYVhJMFpyS3dY?=
 =?utf-8?B?QlZ6RU9HTnZFTmdxSVlwRCs4RE9ZZVBpbTR1dDZRQ0tObTV6bnA1TENsQ2JG?=
 =?utf-8?B?R1o5Ry91Qjh3aEZhM0w5MUFtYk5PRFBmOFpaTVdWQUZkSjE5QjNkUFVLTEZN?=
 =?utf-8?B?SWJ6M1J2QUJlNEl0dzQvQTFPOTlsNFlSc09JODAxL01FYW9ncHR4VTZ4UXNQ?=
 =?utf-8?B?N0JIWU5PYUQrQWd1VUFKZmdJTnQ3OXpQcStwdENIQzVDRVlPWUtXODNMdmc1?=
 =?utf-8?B?djQ5c1ExY1dIQzZ0VVdBdERPc2FtN2ZMNWYwZmd4L3VZdTFIWENHYWMrN050?=
 =?utf-8?B?TjNNQzdDVnl3dVQ0a1pLSjh6VHlBZlZtMlFNUWlTeVVCVHNQNGh0cm9qdFVX?=
 =?utf-8?B?NUJPOTI2V1ZQZlJ4REdYbXI5Snhqb1FaNzdhQmRxQldDK2dnZGJuRlhWSENH?=
 =?utf-8?B?QUlyNDVVQithNG1iVEU2SzJucnRiRk9SMVV6WmdJMzhiQUhxRkZZR3l1VVNV?=
 =?utf-8?B?eVREbndqU0hKSFJOM3l3VlY1RmZTd2NRRFRvdmN2eG41Kys5OWE0UGlxTHVH?=
 =?utf-8?B?NzM2N2I3MmhHeE1GcWhJMWFZRzNYN2Z5WGxycys5WWI3TTNVYUhBMFlhWVpS?=
 =?utf-8?B?UmtYZGhRSVQvOVIrT3c5Z0xrYytUeFVxNUZNTEUwZ0RvTGF1M1lmamJpeWpU?=
 =?utf-8?B?Y0tmZnQ1VUxsNGxBcjhmeWQ2NjVzSnBWc1hTM0xxcmNEUG9zWTVQcnhWMEZU?=
 =?utf-8?B?OERoZ0FablVzbFNKNUhBV0d5OTVTOVpTcGNGd3lGQXkyWFlXWXhaL3NhK2NX?=
 =?utf-8?B?WVc5Qyswd2Z3UHNSUTlZcW4zckhDRjFGTTNjRWZmNlh6c3hBY1JtUDN3OWQ1?=
 =?utf-8?B?K05oZll6V1FQcERWb2tLYVQ4L1dsYlRETXNPUktJM2t6b1N5Sk1aTTN6SnNC?=
 =?utf-8?B?S3BJRVFVRE9sY0VDOHdhdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWMrejVXNkV2S2MyeVlZV3Y1Z1pxQXl6TXhWL0RNanVXMVVyTVdkM3hZbVY5?=
 =?utf-8?B?VU9wOVB5cDlFcksxUTcwcndnUnFEb0VKMjVMVmxmdXRIWXA0Z3hsTmFOb1VT?=
 =?utf-8?B?UkxmYkx3MWwyRUZGdHFxVHhlbXQ5VlFMR1dSU1VNQ1hnY1N1MzFuQWhGUkIr?=
 =?utf-8?B?KzBQQ2FDMjVFeHlEQ1d3ZU9mcjd3QlprcUVNZWNicDl3TzZ5RWlteXFlQXBJ?=
 =?utf-8?B?Sm4yci9DNnk4Rk1yZVZycDZ3WU4zNWN5azVkTnNFUFR5c2Y0MEZaMnJ3Y3p4?=
 =?utf-8?B?cGxSSDFQbXM4RHZuZFVyTEM5T1dzdEJWU0UzODB4dzI1aUpPU2RpbVV0TW0w?=
 =?utf-8?B?WjUrYlY0ZUpDNVlNWkNsY3NhWTExTVY0c1pZNmxob2lvaDhlRXZQMWxzeGlt?=
 =?utf-8?B?cmxwNjNqcGYrcmhMRzJPMndaU0djS2lzSDlzSXFKRWJoNTY5KzBvbVo0V09Z?=
 =?utf-8?B?WlI2RnM5MWl4cWFZa1NWNGh6TzdIUkdkemNWVTFFRVdNRVVVcHNPU0N4WjhN?=
 =?utf-8?B?QlU1alNMZTN4Q2tHMXFTL3BNNmlvYkxnaW4zS0cyTnZwVEppWWVpc3k4QUJG?=
 =?utf-8?B?YlZQNXhJWGtEaDNMempHOWE0cmhSQVIzSFZIWGpuTWZPU2JWQklNMWpLZ0I4?=
 =?utf-8?B?QUk1Y1VzRDhkOVF1VTA4K1cvZEs4bmZYK1FaamV5aXBlNHVRaFkzbk82NW5O?=
 =?utf-8?B?azgwZXVsM0U4S1VhWVFCd0hVWEUwTXIwZi9RZTdkQm9ZRkowczFhUE5JMFMr?=
 =?utf-8?B?VnNoUmJJZm9yUlFDMWhPRHNCeFFsdlByZHdMT0UrMXZVbXNTZm00MFZXRUt4?=
 =?utf-8?B?aVp1UjBpT21HYkpLa0kyYmtkVkdNQ01hZEI1UFdKSFlMc0FSUEZhcGNodHRr?=
 =?utf-8?B?Mkx5ekN2N3dnSHJmeEkwK3ZENE5vc01RWHRUc3lnRC9BNGV6OUdFRVZ3cG5Z?=
 =?utf-8?B?akNWTFIrMWo2dzV6TXE4eEVRdDNtYUQ3MUplOTdGV2NGbE9LSENrVUJNMUZk?=
 =?utf-8?B?a1YyZ3QyQjFYQUgyODd6MSt5QkJIOWVCZjBZL3hnUldjd1ZFMU9qSFdUTjQ0?=
 =?utf-8?B?V0NreVlhaEoxaFlIZjlsQXJLbWdQS1l0RkJrQVMrems3azlaZnNsQ2lXbXlJ?=
 =?utf-8?B?WDhxZWVxSHBaS3RUT2JPS0xCdi9MNFd6YVhoNk5CQkM5QmI1b0FzRGZEbGd2?=
 =?utf-8?B?SWZlMHFaVEVnVENpcVdOanV2alRSNU0rZDFtQk9zb3NBeUp1V3NEY3ZjOUNW?=
 =?utf-8?B?UDhLWjJoc2xBSFFCOThRMW1peE1TTXdHdFdxQVhKOVJydTY4RndpQ3hOLy95?=
 =?utf-8?B?dGNYMGNZS1NlV0hsNUo2UXUzZnFsOXJNSzNkUDVhSkV2MnMxQURmbEZZMFhB?=
 =?utf-8?B?NGs4T1Nva0IwQzZNSkxyS0dwQm4rbGdwckJiUnJUeFZRUU96aDl3SlFIQ0xi?=
 =?utf-8?B?WHV2V29XbjVDNlNwZ29HQTM3dStuNm9WT00xRDEraVdoZFhVMHRDY3ZVdlpt?=
 =?utf-8?B?Z0lvMWNUZkdxRy9aQmZTbTR2SHlPYkFweWo0RWhXb0lNbUJ2a1REN3pabXY2?=
 =?utf-8?B?aDJCeVpsR1lZSzUwdjBRNmR0R0RsaUo4WXZHSjhwYVI2YzNkR1haS0xENDVq?=
 =?utf-8?B?dDFnU1d0c3ZNMm9TTEVlUjlqRWdnOEhqYnc4L3NJQTlJcjdlU2ZOaHV2TjRV?=
 =?utf-8?B?SEsxb2kzWVpwR3p5dzliSysvUk5OTThLYURHTTg2REk2cFZNMkZ0UWhGTm0r?=
 =?utf-8?B?T3JKdXRXNFlac0pzY3h0RjhoZXU0UjBsbDIwamZpRnNFRURjYkM2Uzg1aGZS?=
 =?utf-8?B?U3p6cWlkNmJPcFI4SHlHUFNHTk92OXZLUUJid3N5cngzVUJybmFtcG1uRWVv?=
 =?utf-8?B?ZXhud3hFSWgwTm1QREV2eDI2WHppSi9KWERXbGduSnY3NWFqWnAvZGVlMzFN?=
 =?utf-8?B?N1BtOGJEblZuWEFRNVFXYUE1eUFIcWNTZHdacnNFREFnOGNrSUt5OXNxYlow?=
 =?utf-8?B?ZkF1ZWRBYUZ2ZnUzTHhVV3g2Z0F4ckRyR1NkdW9FTm5yTUErWjg5V1E1cnk5?=
 =?utf-8?B?d0pzejFqZmlVTjZrU3lrU21Pa3BPRk5MenE0YUZNdjJVa0hGcDdsOXc2eVgx?=
 =?utf-8?B?cTBLUEdPbjlEZW5rQ0drV1N5MWlWQTVwcjZici91VWx1VWR4c1FVZmJRbmVX?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66476963-fa4b-4e25-177c-08dcdc0b2869
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 20:06:06.3441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tik8bmDzz6a9OLbTe5PLzcSveILbfpgZL8dJtEqKlQ2qvPkXYbVILXeogjSs533t9uphy04gwq+FjwkvVxjn/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6152
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-09-23 16:23:27-03:00)
>On Mon, Sep 23, 2024 at 04:02:54PM -0300, Gustavo Sousa wrote:
>> Tracepoints that display frame and scanline counters for all pipes were
>> added with commit 1489bba82433 ("drm/i915: Add cxsr toggle tracepoint")
>> and commit 0b2599a43ca9 ("drm/i915: Add pipe enable/disable
>> tracepoints"). At that time, we only had pipes A, B and C. Now that we
>> can also have pipe D, the TP_printk() calls are missing it.
>>=20
>> As a quick and dirty fix for that, let's define two common macros to be
>> used for the format and values respectively, and also ensure we raise a
>> build bug if more pipes are added to enum pipe.
>>=20
>> In the future, we should probably have a way of printing information for
>> available pipes only.
>>=20
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++------
>>  1 file changed, 29 insertions(+), 14 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/driver=
s/gpu/drm/i915/display/intel_display_trace.h
>> index eec9aeddad96..9bd8f1e505b0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>> @@ -31,6 +31,29 @@
>>  #define _TRACE_PIPE_A        0
>>  #define _TRACE_PIPE_B        1
>>  #define _TRACE_PIPE_C        2
>> +#define _TRACE_PIPE_D        3
>> +
>> +/*
>> + * FIXME: Several TP_printk() calls below display frame and scanline nu=
mbers for
>> + * all possible pipes (regardless of whether they are available) and th=
at is
>> + * done with a constant format string. A better approach would be to ge=
nerate
>> + * that info dynamically based on available pipes, but, while we do not=
 have
>> + * that implemented yet, let's assert that the constant format string i=
ndeed
>> + * covers all possible pipes.
>> + */
>> +static_assert(I915_MAX_PIPES - 1 =3D=3D _TRACE_PIPE_D);
>> +
>> +#define _PIPES_FRAME_AND_SCANLINE_FMT                \
>> +        "pipe A: frame=3D%u, scanline=3D%u"                \
>> +        ", pipe B: frame=3D%u, scanline=3D%u"        \
>> +        ", pipe C: frame=3D%u, scanline=3D%u"        \
>> +        ", pipe D: frame=3D%u, scanline=3D%u"
>
>Hmm. We have a lot of tracpoints that just print these for a single
>pipe. Is there any decent way to make this macro just for one pipe,
>and then resuse it for all the tracepoints whether they trace one
>pipe or all of them?

Maybe what we could do is to have a local struct pipe_counters type
and have _PIPE_COUNTERS_FMT and _PIPE_COUNTERS_VALUES for it. Then they
could be used here as well as for the single-pipe cases.

--
Gustavo Sousa

>
>> +
>> +#define _PIPES_FRAME_AND_SCANLINE_VALUES                               =
         \
>> +        __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A]=
                \
>> +        , __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_=
B]        \
>> +        , __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_=
C]        \
>> +        , __entry->frame[_TRACE_PIPE_D], __entry->scanline[_TRACE_PIPE_=
D]
>> =20
>>  /*
>>   * Paranoid sanity check that at least the enumeration starts at the
>> @@ -63,11 +86,8 @@ TRACE_EVENT(intel_pipe_enable,
>>                             __entry->pipe_name =3D pipe_name(crtc->pipe)=
;
>>                             ),
>> =20
>> -            TP_printk("dev %s, pipe %c enable, pipe A: frame=3D%u, scan=
line=3D%u, pipe B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=
=3D%u",
>> -                      __get_str(dev), __entry->pipe_name,
>> -                      __entry->frame[_TRACE_PIPE_A], __entry->scanline[=
_TRACE_PIPE_A],
>> -                      __entry->frame[_TRACE_PIPE_B], __entry->scanline[=
_TRACE_PIPE_B],
>> -                      __entry->frame[_TRACE_PIPE_C], __entry->scanline[=
_TRACE_PIPE_C])
>> +            TP_printk("dev %s, pipe %c enable, " _PIPES_FRAME_AND_SCANL=
INE_FMT,
>> +                      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_=
AND_SCANLINE_VALUES)
>>  );
>> =20
>>  TRACE_EVENT(intel_pipe_disable,
>> @@ -96,11 +116,8 @@ TRACE_EVENT(intel_pipe_disable,
>>                             __entry->pipe_name =3D pipe_name(crtc->pipe)=
;
>>                             ),
>> =20
>> -            TP_printk("dev %s, pipe %c disable, pipe A: frame=3D%u, sca=
nline=3D%u, pipe B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=
=3D%u",
>> -                      __get_str(dev), __entry->pipe_name,
>> -                      __entry->frame[_TRACE_PIPE_A], __entry->scanline[=
_TRACE_PIPE_A],
>> -                      __entry->frame[_TRACE_PIPE_B], __entry->scanline[=
_TRACE_PIPE_B],
>> -                      __entry->frame[_TRACE_PIPE_C], __entry->scanline[=
_TRACE_PIPE_C])
>> +            TP_printk("dev %s, pipe %c disable, " _PIPES_FRAME_AND_SCAN=
LINE_FMT,
>> +                      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_=
AND_SCANLINE_VALUES)
>>  );
>> =20
>>  TRACE_EVENT(intel_crtc_flip_done,
>> @@ -230,11 +247,9 @@ TRACE_EVENT(intel_memory_cxsr,
>>                             __entry->new =3D new;
>>                             ),
>> =20
>> -            TP_printk("dev %s, cxsr %s->%s, pipe A: frame=3D%u, scanlin=
e=3D%u, pipe B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=3D%=
u",
>> +            TP_printk("dev %s, cxsr %s->%s, " _PIPES_FRAME_AND_SCANLINE=
_FMT,
>>                        __get_str(dev), str_on_off(__entry->old), str_on_=
off(__entry->new),
>> -                      __entry->frame[_TRACE_PIPE_A], __entry->scanline[=
_TRACE_PIPE_A],
>> -                      __entry->frame[_TRACE_PIPE_B], __entry->scanline[=
_TRACE_PIPE_B],
>> -                      __entry->frame[_TRACE_PIPE_C], __entry->scanline[=
_TRACE_PIPE_C])
>> +                      _PIPES_FRAME_AND_SCANLINE_VALUES)
>>  );
>> =20
>>  TRACE_EVENT(g4x_wm,
>> --=20
>> 2.46.1
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
