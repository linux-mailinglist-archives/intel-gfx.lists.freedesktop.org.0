Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9051BF25E7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 18:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7664B10E489;
	Mon, 20 Oct 2025 16:21:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i5PHpckg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4942010E480;
 Mon, 20 Oct 2025 16:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760977285; x=1792513285;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Ai9Xa9fSLdgY3R0plSxb9MuenwBVu3iokn8IVm1ObrE=;
 b=i5PHpckgWu/TYIDBKP2dBUwvPcOcsDRCaovQJiwAIBk3B/+UXIC5GLGf
 gA642DnpWghXnoI+ZfIFUBX2cuH8iEJjQBBwAyhlklQu3fmscmRjO8mSH
 41kvD2qEv6cZA4jr0I36+3N/nsl+oH1sDClKNn2TzXAEdwmAT0+PcagI4
 jqECgo7LA2mhFkGp5UHB+n4DjGEgBtizsnd57yXOkgRgrysVP+eeKwAKs
 DmlSZ+rQ7hvmlriUXP5WvVX7LaXjQE44VJ0WAvK6sIdJ1N9230YOcG7Gx
 /STwe6GaGFlMdiF8yqhqmlBqlgHH3TMgsv3N5FYzjBLR0TQGlUVWO/FZk g==;
X-CSE-ConnectionGUID: pdCR794NS7aIjmni0VYtMw==
X-CSE-MsgGUID: NtcUgEjFSfOAnSvj2e1DSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74533303"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="74533303"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 09:21:24 -0700
X-CSE-ConnectionGUID: xhRGjEs/RHmdg3OdB+RzSg==
X-CSE-MsgGUID: jF/5wp2lTJmm65/VPo+aNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="183067687"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 09:21:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 09:21:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 09:21:23 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 09:21:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZPxrdBszrUwq1OCRz//gl5WqH6fxuuuErr413YswfFNAUw8T2gtC+dIWnO23Po+nlDqzVW80Am5h+9bB2ccZkrtKrf2uUQUhqlRcWj2k8umd7u0E+xVkWlRJ8h7OJerzTKAayQvXVCIGSaLFGvnpYJtJVb4h+oyp1TU+0IkGzfO1DrXDAuT64yWRJVcCtIJpZgwRZHLtBehJDoewh1gCIXob/gM16xaxyL768e0zF4OibmoYrI4xQkVV03lD202MLTm/Gs9Y1RrDMF68QIn+fng00lecmldXqUCHkK6Qei15ro3jomwgy93RSZLFtvZ5W+pZe1zotV665ItrtOW6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S0p1shJTziGanvJvTmh6kGb/s4lI+eTbbdHoJoALoXo=;
 b=wavJOxbGDynOyiHS7xRLWcyKFRFzsqs+sZFmiCWqE7IvUhi05slka8h4psMhK9B68EicXgwoNY/xJGU+VIXWwcpDMRNWQwtO+SF4R90nSyoD2oe7hLP7uPYS71I9KtGU0fb0JNo3dEL/y4sIDKsuAWVu3n35oWTLObR3JNdi+FqqQuvuEED306rQ083F11gPKekXf/UCLJIpzFAbv4s+UaKGRs4MkRgkZ1nWXMDaWaqSXcPAhh9U2kfEA+HjIs5LQFDRlbwcgTptDl2lH1LGPqhFdJ+sd0aYDIJIXNgx8bltRBttUCZ2LArMx/82oMV8sDb+qSIlygSTmhmkR26SXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8467.namprd11.prod.outlook.com (2603:10b6:610:1bd::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Mon, 20 Oct
 2025 16:21:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9228.015; Mon, 20 Oct 2025
 16:21:20 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176067186701.23602.14960783266679330247@97596180aaec>
References: <20251016131517.2032684-1-dnyaneshwar.bhadane@intel.com>
 <176067186701.23602.14960783266679330247@97596180aaec>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/xe3lpd: Load
 DMC for xe3lpd 3002
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 20 Oct 2025 13:21:15 -0300
Message-ID: <176097727514.3231.12260417256718718005@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR11CA0050.namprd11.prod.outlook.com
 (2603:10b6:a03:80::27) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8467:EE_
X-MS-Office365-Filtering-Correlation-Id: 026cd6f3-f2f4-4c3c-2435-08de0ff4b403
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlJwK1R4c2NxaWFFT3QzUmJyUnZDbEVETVFTRWs5eDJiNFNiSjlzRWg4d2NE?=
 =?utf-8?B?YnMvVmdWdlc1RGRnUGtMaGJ1M2RjUW9QWEdwOENic3hvSVRYYTlsL1J5TS9E?=
 =?utf-8?B?aTlOT2ZJd2FRQTdLaVExNERaR1lKRTczcmxyaDZ1QWMzZVNtNjhReitJSlY1?=
 =?utf-8?B?VXpXYTlkR1g4aWt5UktLbVRaSG84UlFRVmdjQXJVbk5JYTJiZ0l4bjJucUxu?=
 =?utf-8?B?R29qQy9TMzJzMlo1SWtWZU9icXdoc2lDYWNjSVNadjc3S1dtMktVK1ZwTFN0?=
 =?utf-8?B?b2NkS2pWUFhSNTcwVzNEY1NKWFZrNWVQQWNwZGk3eUFTY3VZMlQzeEx5RW9X?=
 =?utf-8?B?VElQRWtYL3dobFdvcWE5ZGpXMlUxdGV0N2MyaXU0RGMvU2VzZmVVYUxDZm5P?=
 =?utf-8?B?NGxTalRYdFgzNUNUWmI0U2s3Wk5obGNlL1AzUGQ1M0lsL1FBUmg1dE1iOUxY?=
 =?utf-8?B?cHI3T2lXNmhreFh1d29HakJENXljeFpibVVobXpUblNNTVprTFM3ZjhzdXgv?=
 =?utf-8?B?M3NyM0xkQnpGMFBYb2t1elVxYXRyYU1NanEzNlJyUExydzBlUGNodjlpYnhN?=
 =?utf-8?B?djloUU4zN0FKRmVjSENZbXllWmpPQVBXWmZic0VTY0dienhGckRZbHZmUURq?=
 =?utf-8?B?bFhXa3dpbnd6MkFEeEM1UzNvaUNWZ3hDWGlKeUZVLzdGdHF1dUE1TVNaUmxJ?=
 =?utf-8?B?Y09QZzBGS3NkeWtXbDRxUXVrUFJjMEZ3czl0dWc3SzZRNlVGU1l4Q2V5Q1pZ?=
 =?utf-8?B?VjF2aEFBN1orY3gzYWoxWld2NGlZQjRrdEErVW50alBjQW5LQXRhdUtjNTFQ?=
 =?utf-8?B?MGdkeklBblRzemhUSTU4QWVXeG0yVDJoNUc2UDJJNTJ0Sko5Q1RhdGVUM1h3?=
 =?utf-8?B?Z0JzZ0JNbnI1d1RtNXBZSnI1MXJ2TXVPRUFUQzBOVVRrMzk1MjJGVVlWQU9k?=
 =?utf-8?B?bzFVNm5UdjZqSVRtcG9IYkNzUW5DcTdrWlpjTDM5M3ZwRW5LUmdpL3FvZHE2?=
 =?utf-8?B?ZUVDbnB0bHdob014d3EreWVuNzVMdjhoOGowRjRWR3VINlAvbGxtMjdPanA2?=
 =?utf-8?B?RktEMDcyT0tEeVBvejBnK0dmZTJjYXJTQnhnSjZTMElUSExoYUVKQUxtUVdS?=
 =?utf-8?B?Y0tqRVUxcU0vcnk3VEJQUlQ2V0RNSjBmZFlqSVBzNVZiRU5RZVdHY1hHTnF1?=
 =?utf-8?B?dUNnMDhFWkRzd3dpdENTRGFEVjhtNHFFaUtUTVV1aHcyNTBqMTFBZTN0MURQ?=
 =?utf-8?B?S0RPUkhXSlpBbndxNTRuRHk5QXJTRklMSnl6ckdtUUZZd1ZHUElxSEJoQTBD?=
 =?utf-8?B?MFFqdFNoQ3RqbkdCMVJodHIvQkpXbzQyNTZDZGV0THNTdVdrbjdWL21MZVlL?=
 =?utf-8?B?Q242R2NmZ00rQlJrekMrUVAyTE9iVmxpb1hxKythenhwLzBUMjh0cm5TSE52?=
 =?utf-8?B?d1ZTUVBid1VXcWJya0VQL2lqczdxb0ZncEhvRmV5VGN4ZjRQalRiTFhaTitI?=
 =?utf-8?B?RXJZOWxGdnN2cXk1ZjZCRnpXRzg0WVJub3g1akpWeUlEUzIzMitnaXBDWmg4?=
 =?utf-8?B?M09mM2ppMnBQTnRZblQ0N1JwazV6cUtidkV4M2FsdzhzK2xWVU51QnlsdTJQ?=
 =?utf-8?B?Wlh5K3ZrOS9CZVh1ZlUvd0paU2RYU1F4N3RMN3RvOEJHc1lpNG5GQWhxMVJN?=
 =?utf-8?B?OGVuT0FBajBCbFR3NmY4YzhsekxUS1VNK2k1cjdwMWVnbnQrRWhmYzNkakRj?=
 =?utf-8?B?WHlkanorZkZ2ZXRuMklrSHErcGJVOUhrdHFTV1grQ3ljVlVlZ085QU1RZzVr?=
 =?utf-8?B?N21sdzN3dWZTT1AxeUhpbVNIL0UwcEtzVkNqZzZlOC83MGF0amNnV2tNWnNs?=
 =?utf-8?B?aFpiRGU4bmF3dEhFNVAxdjVaUGVHdDlrbEQvWTZTL3RqRGc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXFzZjc1c2huRXJ0azBONGl5NkJMOTM3RWdWY3lFQitONzBDU0FnWmRmNlZT?=
 =?utf-8?B?V05pSlBLbTlsYlpnNmRQaXpNMm5IUk9zbFlIL3pycllNNkhQb29rejh5SnpI?=
 =?utf-8?B?VjVCbWVnbHU2N2FNZjJXalRNUWNrUDNYM0VzRXhPK3Z5eDFaNFpxNW84aFdY?=
 =?utf-8?B?TW4rTHpiSFpyZDFSN21ydzQrRTJQL0pkZUJQNVJzVzRrRUx4eHRJdmp2SUVV?=
 =?utf-8?B?bXh5RE1HTlp5aC9DUDQxSTdHSTA3OHN4N01kRDlBTkFZVThEUDRYWkxMYWRK?=
 =?utf-8?B?REl5RTFERFhUc01GaXdWbGpxMHFkQ25wZmNhMzBVZmZJa1NBOTYwQzRMSk9F?=
 =?utf-8?B?YnNyKzNaUG13MW9tWGsrdVowUE9XRmZXcDl2S1A1Z3BPdkFRRkhNcVVrZVp4?=
 =?utf-8?B?Q3lDS3FSU29RbmN4RzdOelVvRjBmZ0NtNzlBOUdNV2svV1EyNXVDTG41bjZv?=
 =?utf-8?B?NmZpcWh0U002ZWR2dlEwUmE0R0ZWZlplQ1puWndBbEZCR3k3dHllaHhqYnNz?=
 =?utf-8?B?eUFpWnVKeVp3dm1XK3puTGxSWmJEYy9jaVhLTFB3REs3eVpkbGhrMVY4V2tD?=
 =?utf-8?B?bXhvdEtnMUw2eW5qUjl3YUw1NGMwY2dXTTRyK1owR3psM2JuTG5LaGIxU3My?=
 =?utf-8?B?T3doem9ydkV1c1A5QXhodEk4MmVkUDZBb1JzVnpPZWRRMW1GZlkrZ2RHYnNC?=
 =?utf-8?B?NTRnOG9lYXEyajU0MjA1RDJjUVJvYlFXUmFMUnBWckRXTkZHZlhlaGlEblZh?=
 =?utf-8?B?S3kybVpHL3pTMjAxb0xSM21vRTdnSkRDWTVsQXR4MGxnK2pXenliYTdGVlNJ?=
 =?utf-8?B?VUFkNzRLWVlsRDRhOU1VTm1oN0ZtWU1BdVZrVTNJM204RWpDZzYrOGFCY2JF?=
 =?utf-8?B?SW9kT2gycXlkaGdYNUcvajNQV0xmQ2QzU2hLK3RpVVZwcjZSSWJoSlV5Z1A4?=
 =?utf-8?B?N1M0a3NyMHRLRzZxWmdtdnFIazI2TXhFNVoySTRKR0pWajRjYmlFd0dUR2RW?=
 =?utf-8?B?K01ZeWRrQjY3V2V0blB5UzRyRUt1cnA5N1dwU3J1QzdZM1UrYURya3Q3K3R0?=
 =?utf-8?B?T0I3OFZleUdjNmhuMzRvdGJCWGR4QW5OOXVkeGJaYzJvZmkyVzdnR3BXaENN?=
 =?utf-8?B?Vy9kaUY4VnhqSGdqbVFZNkZwRkdjZEhKWkRWd3Q3S2Z3MFVoNVVqSUNhZGxT?=
 =?utf-8?B?OHNxM0hXTG9TZzdMWmVWanZVVDh3VUw0Nm5ya2s2ZWUrOXJxeDNiSWxDQ3Ar?=
 =?utf-8?B?akhaTUZVMjhYUS83Q3BrdHFpMnJ6ZEpqSzVyNkVhek9YY1JxWWNZbVBiYjhG?=
 =?utf-8?B?VU43WW1hMWROS3ZDSFc5SGMrR1ByUk9WKzFWVXYvTHkweG1OMWRwakNWSnhD?=
 =?utf-8?B?eWpuVkZuM2tqYWNGeWpHTjF5aW44dXNvWTMvQzQyL0xPRnROYjU0bEd6aDhn?=
 =?utf-8?B?TXg0SHp4MDh6ckhQaXM1ekNYam93Rjl5c3QxZSt2UzczcGd5VTdiU2ZhZTJv?=
 =?utf-8?B?ZVRVZ09tbC85VlIvaXNaQWtFdGVKdWdqV1hZMWhIektHMDExNHYybXIrb01Q?=
 =?utf-8?B?YXM1eHpCNU40VU8rbi9TWU9lSVMxTVVlek1VczB6dm5Lc2R1ejZ5SFp0bGky?=
 =?utf-8?B?akNWek82QWNXMFltZ1l1ZERvQWlyZ2tVYkpFL2R4Mm5pQzBYWHFyb2R4UFdV?=
 =?utf-8?B?Wkh4Z2U4T3lnc1AzOXVsWi9teWJKT2hCYkJVc0pya2l5bk9rQ01paEJndDZa?=
 =?utf-8?B?ME40UHZxMmhwcThUYlhFdG8zTmM4Z2pPeVVNWUpDMklJREtFSzEvS2FsOWdZ?=
 =?utf-8?B?TDR5VkRVa0p3TGwxTnJ3Qm5XZVFMR0JteU4zbXlXUk9iN1psRWNnSWRzQy9G?=
 =?utf-8?B?MDRjcUNSbjEyMUptTFZWUE9qNVBIbTdycWJXQm5IMWRPN1FVTzFjRnIzYWlr?=
 =?utf-8?B?UzROeDJUaExjQlF2OTN2RHJ4WVR1d0kwZWRlcU1zckNSU0l6OVgyc0NRUGNj?=
 =?utf-8?B?ZiswZ2ExRzVIMHJibU8wL0VEQmoydkdMbHVTZVRERTZuR0VrZ3BlZ3VvMm93?=
 =?utf-8?B?WGNva3JsRlgxTU9DQm52S05rQ3lUc3ExcmtaN3ZybDJjdW9PQ3hCblpvaUVr?=
 =?utf-8?B?V0ZxSkRnNWZacDVGWkkrVkZOeVdFTlpsTjQ2RUNkT0UwaHNKSnRXVVQ5b2Zh?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 026cd6f3-f2f4-4c3c-2435-08de0ff4b403
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2025 16:21:20.2222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2exdexyY901oZYT95x4LSD3g5EkcM4C9eaEpm0T+mFiajGan4hvnufnq6M2o1V278STQ3iYWf+g5NTSNtS2DHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8467
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

Quoting Patchwork (2025-10-17 00:31:07-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/xe3lpd: Load DMC for xe3lpd 3002
>URL   : https://patchwork.freedesktop.org/series/156063/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_17375_full -> Patchwork_156063v1_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_156063v1_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_156063v1_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (11 -> 12)
>------------------------------
>
>  Additional (1): shard-snb-0=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
156063v1_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_vblank@wait-forked-hang:
>    - shard-dg2-9:        NOTRUN -> [ABORT][1] +1 other test abort
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156063v1/shard-=
dg2-9/igt@kms_vblank@wait-forked-hang.html
>
>  * igt@kms_vblank@wait-forked-hang@pipe-d-hdmi-a-2:
>    - shard-dg2-9:        NOTRUN -> [DMESG-FAIL][2]
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156063v1/shard-=
dg2-9/igt@kms_vblank@wait-forked-hang@pipe-d-hdmi-a-2.html
>

None of those are on WCL, so they are unrelated to this patch.

--
Gustavo Sousa
