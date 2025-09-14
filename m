Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCBCB56702
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Sep 2025 08:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B93110E02C;
	Sun, 14 Sep 2025 06:02:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cruKYIx9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDE110E02C;
 Sun, 14 Sep 2025 06:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757829763; x=1789365763;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iYZdVcre2R/c2zoRJk3EgbJPmDwILkLYb+NqNXXdTFc=;
 b=cruKYIx9QzuYENl+mjgbORL9G2eN6L6lNZ+GM5pc5upCrzK9o6YAhZva
 Dh/v/kOjm9QGSFEXxBK942p+nCcFKvows5aveWPcf1oNoUMisldMydqZ6
 3MLXp/Sh6ShCoQFQCSqZu2kbXH6Kuyx1ZeMe1S8Mhd6uMv+GyeV06UR0Z
 yyRX5vjql5tXekd9klnntJGmav+b8oxzZe/BFp5rcKh2NEBp8qIzDgQg/
 jL7/1GckY0Ign0Ef4J5/IFMhE96j8tY1mY7EKQwaSzp2TttvwzIsnV3Fw
 slZLulNRmv4l9bJTIx6tj45HFjq4hmWA0xb2pVBHgOIj7PIeMy8ro+qI2 A==;
X-CSE-ConnectionGUID: baGW+Q3xSbyGEdw5xrv4Gg==
X-CSE-MsgGUID: JytRNZSxRhqWymWHZlLlnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="47685726"
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="47685726"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:02:43 -0700
X-CSE-ConnectionGUID: B3PMTc85TemHH7vvqhOOVg==
X-CSE-MsgGUID: ss26NmwoTIOxQqi7orzTEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="173931660"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:02:43 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:02:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 13 Sep 2025 23:02:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.81)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:02:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RKDdyldN26K1wlbFDcEYnWX1XchhGUDqvI4gf24HsytsyGXPGsl2n8NVpoI9JclVEM0LhilR3mBC9JSvEWIpAvdNhyBKwKWDrn8xoiAVIPo0DMZOr1nxBNaR7LnLe2sgmgdZfVIbBcQ0HmqKhOQ7mlU9FPEsb4q8XVVPP6LyhhsmJzEoP7/DuJgXX+6JTeTVZejO9c6xHv9ii+KkgAppIbk95wilUYXCowk9PKoE5iKv1Wqrr1P9D8H6TLactRsA+2etWw5cU/0XqWoe/TO69aODKTrm087360qu3OjAYWCfLGPmCetModoh0r25n/GO3xEwQaVdo+bqJfzOM0DiiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uV3+MUX7PGcZISnBb7HiGcuFk4/PMQKBKFzEF4FxOc8=;
 b=SJv+P+HxQqHTaEGApD7e1qXddtm6GZ0uJtG7a76WZeGOWEcuumU/xPo7O6f4EdHh4fZ21YQ1qsT3nBJKnvx/j1PnwMoKJmbn1WQXlfARotuyi6oII6kC2Zdy+PhTN1FEls2MD3lKkqD49+60NmnGBgiDDvr9vi1lz/w3PJxjTWOai653N/GNXMPqpfYKw9giSUmm2Fi3hiR2k28ZePJg6ntwKb1bQCtLYFkTqeczS6q5o4tdYWdlaPX5cmrI8FOZhWvIIGDgKdAdQCHg2m4vT1zr9ywtzO3M+Fgue+PA43hj0cKKaqSGyFSbwKF210JAYpqAfYR1+qNRt14sB4T3uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sun, 14 Sep
 2025 06:02:31 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%3]) with mapi id 15.20.9115.018; Sun, 14 Sep 2025
 06:02:31 +0000
Message-ID: <465ce1b1-6b34-4b8e-834e-d20409ba0bff@intel.com>
Date: Sun, 14 Sep 2025 11:32:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/15] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-6-ankit.k.nautiyal@intel.com>
 <aMLWLu-hemOgNkzz@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMLWLu-hemOgNkzz@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: a3c08ed9-f8cd-4da1-3edb-08ddf3544a80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ODNYbW5NV3NnTGplOUgwU3ZuMWk3cDExWmh4SXNCQ3grL0FVNGZsZnFwWGZm?=
 =?utf-8?B?V0xLdVdudWJlcnlLaUpzc1J6bnBCU2VJRkhGM0E0QWU3VE1WeGxLVUJDMWlT?=
 =?utf-8?B?OGdlMG1YQnJLcHVXTzJ5eFg1eUtQYzNSMzV1UXpQaTNSUlF3NVNLNFNKNk5O?=
 =?utf-8?B?cXA5WENKSWg5eEhxcWkrQVNCRURzdW5IQWovakpjUjYrd2wvNW9LSCtDcDdz?=
 =?utf-8?B?QjVVWE5pZG5udXl4cDAwNkx5bFNjdjBnbnpRTUpKQy9CSlJiZ05CSGVxQzhR?=
 =?utf-8?B?RW4vd01wYStYc3VZMXNDQVlTQ252bElnTzBmVEU3ZXY2d2FFZ1dSQnhCc29F?=
 =?utf-8?B?U0tJaGQyUWNNNmxNU3hOdjVVTFFramZzS0ZMdGFqaFRxM3lzaFlvOHFzeE8w?=
 =?utf-8?B?M0RPTXF1QjNlQ3dnSFNCRGU2L1VYQWFHZ3hodEtjenBlQjNLUktJamoxSUxL?=
 =?utf-8?B?UkhBWGFCT1liLzAzTHZ0MkVPNjE2YU4xUGI2TkdlUVV2OTd6OC9oRTN3cEpy?=
 =?utf-8?B?SmtHN012WDhYb2lNeENtb0xpZVkyUmhzUjlvYUxONHlqbDYxWVIzcFYzTG1E?=
 =?utf-8?B?Q2E2L0lDc0lMSkFBc2J6c3prcHV4ektVYWhZUDdWR1pSWkt1elJRUlRKa0RT?=
 =?utf-8?B?Q3JoZysydG0yZnNkS1hMV29INGVqaVFQYUNHU2xRL0kxOVZrSVpGQjQxVXN2?=
 =?utf-8?B?Ry81T0RucEZScjJKNnBDZnVFMkYvVjgvZE5FeC84RW9LVjF0cHAxVzQwLzJy?=
 =?utf-8?B?SlpTVm5QbDhaUDhhbENGMDM1NE50OXpleG1xM0dJeVdMbTIxVmVocVdBZFlK?=
 =?utf-8?B?blRMWnpHL1Z5dXpHYkQzOVFOb2hERTdnNTB4ejN6TEZUU25LRzUvNU1uRmlo?=
 =?utf-8?B?ejFBeDV0WTlnbmdkWkVIV1YyZUcrQXhJeTUyUFVpZGV2bFlJZHorbHVZRkxw?=
 =?utf-8?B?QUVkcndyc1B6TW5SMk81U1RvN2JETE5ENEhmUS8wMGpHQWllTjB4eTBoY3N0?=
 =?utf-8?B?OFRyQTF5Q1hDQmVUZlZ1REZGeWFpTUFjUGE2UVpOUG9DcjhvaHgzaWIrUzR6?=
 =?utf-8?B?NEpYZ1lCR3o4UldKZWU3UE10aDBjN1JBN2dyRXNiM3phdEtJUFhYcGc4M1Vi?=
 =?utf-8?B?QWVpcEo5cWZRZUV4TzQwRkRWWmpwZnQvNFZDNm5sak03b0Y5bFRHSzFxbWdR?=
 =?utf-8?B?YzdxWU9hNmErdytQV2NINFJoa212djdPdFZEbHNiblJSOTNVTFhQd0xpZE0r?=
 =?utf-8?B?d0owMHp4V1pYSFlWOW5LRjFZWEdITElsOHdmNHNrOWNTaUZlNVNhOXE5VEkr?=
 =?utf-8?B?MmlWcFNNRGpZTWtLRVhiWTZkU3MzNTJZVXZSWGRCaWFOZndhbGRQalc4Nllp?=
 =?utf-8?B?RG9lNVhCYytCTHhBUkJHdkU3c1k5Ui9yU0Y1NGg4ZVAzYUluZ0lMRW9aUzl3?=
 =?utf-8?B?NDgxWHdvNDMzMHBtMEVUcnBHZnQrMDN2WnBOcTFIVWx5Zi9wVWZ1K1RIdlYx?=
 =?utf-8?B?YTk5MmFZMXQxZ25YdjNEbTFmYSs5QnkrOTdabU81R1hheGNsRFNwQWJQZ2JR?=
 =?utf-8?B?VXhvMnhtSjRRUXQyZHJyS2xkbDhxY3RlRGpJdTdPTkhLNlBhZXZGOTErZGFP?=
 =?utf-8?B?dGdqbFVCYjQ0Skw0RVNsWVIrb3VQZkpzcE9oekRBQWFiMUxmYjY1N3FOUUtz?=
 =?utf-8?B?ZVQ2d2FZQk1tK0NHb2JVMDMxc2hQKzRYZk05d25yTURuRTVlK2NvVUtIRnZT?=
 =?utf-8?B?ajd6VGkxbloweHBHRjd2WXE4bVFvSnArbkJoSkd1R0tGTVFmUFlGcHlBZm1Q?=
 =?utf-8?B?c01EbXlsbUpDMVVTNGY0cDZjblA0N2FweWV5UGhnSmhlalZHblg4OHVkblJj?=
 =?utf-8?B?elJIcFhZVnY2SXc0bkhCdGtIVWZodXhrR0w0blNBRVNGVUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXpOYWlSVkdqTXQyZGF0ZWNTcTI2b3dLTlVtRXd3RW5LWEk1NGFTTHIxMXJC?=
 =?utf-8?B?Y3VPZFNTeEZxS2FFdU1UQko2ZEl5d01yMjhIYzNWeTFJWFJ1azMzM3k5R0tx?=
 =?utf-8?B?M09IWmE1KzFEaTRFV1R5WXhEWnJkQzNiaUpsWEtKQXY3cUJDWmR6bWVNTG1w?=
 =?utf-8?B?SkFtN01OWWhYR0FRU2F0QUVXSzJBazVvU0xDeWtxZ1UxOFJ3Y0lOWGlHWGFJ?=
 =?utf-8?B?UzBYVG5ySXdXc0dKcXBOM0hPbVh5UTgrUFo3K0NVVVNnOFVDcHN1K05OL2tZ?=
 =?utf-8?B?eDNqRE1nSmFZYzZHMnloQmNzc25CTzNPUFBybWxBS05QVmVEUm1qbjlkRTFV?=
 =?utf-8?B?YkFFVGQ2RXp6eS9GS0dGR1BoRk5ZNyt4L1pudlRsamd1aEgvTk1IZ011YW9m?=
 =?utf-8?B?bW5lT1U2OGxlazY1WWpOK2NzcGNEc3poYUxudWt3aGVkZGxRS0Fkd3E3c3ow?=
 =?utf-8?B?Ri9RbGdjYUhqT0lwYjAyd1p0SlN3b3c3eVVNTDNSSzN1RnZRSFVpbkFZM3ZE?=
 =?utf-8?B?SHhPUE1TZjhOOFB0b2cxZEFOTUhyNWlCR0tnT2dwREtudmtYeVFLbW1FZmhC?=
 =?utf-8?B?R1B4cStWNHpoWFp5bmYwZkFNdnNONGhXV1BCQTE4c2pWbjBtbmtiNXJ0dDFX?=
 =?utf-8?B?WWxsZ0Q3bDg0ZDVhQUpzNzkyc09GUnlMQ1ZWTU9DNWg2aHlLN3N1NURWeEN4?=
 =?utf-8?B?VjVlOGxVaTRsWFZFcVJLNjF5TytHa2R1cXpmTjBvZnNsUDR6MUJWR0FRSGtw?=
 =?utf-8?B?dmhqWHdCQTJ6REYvTUdLbmZnYU9EbkdsYW1sNFpqdmIwOUs1YWsyZWxTVFNT?=
 =?utf-8?B?TmFicm9VK2VYY0g4LzZQaE4waXhzZCtPc3lHa2hvZlQ0RzIzMWxMUUFROUNC?=
 =?utf-8?B?bURkMkRLR0RZUVp4aURKYytyRHhPTFE1eEZXOHpGMm9vNVFCNlBTR1VxWFFu?=
 =?utf-8?B?d0pDQkVvWnIwT3lBaFhnZlBqeWIrTHBDbFkvOFNJYU4zMEtWQnhCc2hNV1dp?=
 =?utf-8?B?WVZNdy9LNldjUEx5cENHcldOREpMbHh0SThtS0xYdXl2dnhLL1pOc1FRSTQv?=
 =?utf-8?B?WFE5TXU3Z0JPaWxTMUJlZ0Fsb3gyRUVmbnE2WXJUSE81aUxQSGk0czJBV0tE?=
 =?utf-8?B?M05TcDB4T0JCZ045NWhKcVV0eHByTndzRUhCcktYb1FsbmhvMUlRblcxQW9T?=
 =?utf-8?B?cXpYQnNLY21wZEFjdlB6YzRHT1pYVXJsQmQycHUyMjg4V0JWazFvYWFENWto?=
 =?utf-8?B?bzN0Y2ZtRVBsNTNONVJKRVB6UmtBRWh5S3lJZU0zUWxsTys0TG4yQUphUW9u?=
 =?utf-8?B?TWIxR1BRYXZyS0xTRDIzUmRXMTBxQy9ZK3FiY3NTMTBuUjZpUkJaOTlmZlp3?=
 =?utf-8?B?cDN3L3AvcC9lNWNVOVo0QnNQSVFZcnVSZFFlS1lMUm8wWm5KTFhGWnB0UFIv?=
 =?utf-8?B?VnpZNW9WQ2pSalR6WFpneTgva2tyUUgyZDlnSjRzaTZXRUpMWHhpb2hzb016?=
 =?utf-8?B?MmUrd1RRdC9iRGFEREJKMVBkRTd3MnVQRkpZQkNEMWZ5VjFRRER1MHN1R0NL?=
 =?utf-8?B?RGlGNllUMU0yUVNkOHJoRWJkODh3N3pmVXpJYUdEU01TVW1JOTN2a0diYnUv?=
 =?utf-8?B?aUhLbzRwRk9sTVROWmhTRHN2dVhYeTZOS01ObjdLb0FKSCtaVHBDVFZHZHNt?=
 =?utf-8?B?YnZVdFZCTnJFZ1BET2Fnbmp6S2RGb0RTZGxLUHpBdlhEeWV5OWRhR05VNjJS?=
 =?utf-8?B?TUtjRkFCOUxvL3FsZ2ZHUzF0UnBVb0lGczl5bEs4QXpUUkhBRUlrRW9hRjdl?=
 =?utf-8?B?dDlTWUZObjlSZ2lsUWZ0c3ZJa2NTdXJYZUpYZER1QnJDNWxXUW1NRmJVS2wy?=
 =?utf-8?B?ckVSY0NVYnEzaHcwbmx2bzFVNXgvZWlFUTBPWGpyeHoyL0J4QnJHSG52NjRs?=
 =?utf-8?B?RU1NMFIwOHJhb0tvVkRETE5EcnREUzM5V3R4Vk4zcXc5QXdWV3ROU2JkUlZR?=
 =?utf-8?B?M2V1bWJtRTZWb09KdFRDRXdGK1Y0eC9WSEtFVjVlS2hDQjkzMkFkNWFyU2U1?=
 =?utf-8?B?R3J5RU9abDVCdkYvRFd6bnBYWUhCUTlZMGM3RVYvYm9jL3FJaFVDc3hvSmNY?=
 =?utf-8?B?b0k4SnZ1QVNUWVQwTlduT3NIK3BKZDBLNVVpbWQyRXVGMVBSM0oxUDBrVys2?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3c08ed9-f8cd-4da1-3edb-08ddf3544a80
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 06:02:31.6137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q+yBF4oIfd82rmOVwGHU0iWEbQ1Ge7yYX7ekgO5+zuINnM4//xdc3v/u82tlUHXNkAwhtq+P8XdwfDMaRnvjr83EcFYC855BPghqzGLugWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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


On 9/11/2025 7:31 PM, Ville Syrjälä wrote:
> On Thu, Sep 11, 2025 at 08:15:44AM +0530, Ankit Nautiyal wrote:
>> Currently dsc/scaler prefill latencies are handled during watermark
>> calculations. With the optimized guardband, we need to compute the
>> latencies to find the minimum guardband that works for most cases.
>> Extract the helpers to compute these latencies, so that they can be used
>> while computing vrr guardband.
>>
>> While at it, put declarations in reverse xmas tree order for better
>> redability.
>>
>> v2: Initialize {h,v}scale_k to 0, and simplify the check in
>> intel_display_scaler_prefill_latency(). (Mitul)
>> v3: Move helpers from intel_display.c to intel_vrr.c as they are specific
>> to account for latencies to program vrr guardband. (Jani)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 33 ++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_vrr.h     |  8 ++++
>>   drivers/gpu/drm/i915/display/skl_watermark.c | 47 +++++++++-----------
>>   3 files changed, 63 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 266cf5e1859d..fd690de5b45b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -772,3 +772,36 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   	if (crtc_state->vrr.enable)
>>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>> +
>> +int intel_vrr_guardband_scaler_latency(int num_scaler_users, u64 hscale, u64 vscale,
>> +				       int chroma_downscaling_factor,
>> +				       int cdclk_prefill_adjustment,
>> +				       int linetime)
>> +{
>> +	int scaler_prefill_latency;
>> +
>> +	scaler_prefill_latency = 4 * linetime +
>> +				 DIV_ROUND_UP_ULL((4 * linetime * hscale * vscale *
>> +						   chroma_downscaling_factor), 1000000);
>> +
>> +	scaler_prefill_latency *= cdclk_prefill_adjustment;
>> +
>> +	return scaler_prefill_latency;
>> +}
>> +
>> +int intel_vrr_guardband_dsc_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
>> +				    int chroma_downscaling_factor,
>> +				    int cdclk_prefill_adjustment,
>> +				    int linetime)
>> +{
>> +	int dsc_prefill_latency;
>> +
>> +	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
>> +
>> +	for (int i = 0; i < num_scaler_users; i++)
>> +		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale[i] * vscale[i],
>> +						       1000000);
>> +	dsc_prefill_latency *= cdclk_prefill_adjustment;
>> +
>> +	return dsc_prefill_latency;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 38bf9996b883..950041647e47 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -41,5 +41,13 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>> +int intel_vrr_guardband_scaler_latency(int num_scaler_users, u64 hscale, u64 vscale,
>> +				       int chroma_downscaling_factor,
>> +				       int cdclk_prefill_adjustment,
>> +				       int linetime);
>> +int intel_vrr_guardband_dsc_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
>> +				    int chroma_downscaling_factor,
>> +				    int cdclk_prefill_adjustment,
>> +				    int linetime);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 3d322c39ce21..1ff2b4d9a35e 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -28,6 +28,7 @@
>>   #include "intel_flipq.h"
>>   #include "intel_pcode.h"
>>   #include "intel_plane.h"
>> +#include "intel_vrr.h"
>>   #include "intel_wm.h"
>>   #include "skl_universal_plane_regs.h"
>>   #include "skl_scaler.h"
>> @@ -2179,11 +2180,12 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>>   static int
>>   dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   {
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	const struct intel_crtc_scaler_state *scaler_state =
>> -					&crtc_state->scaler_state;
>>   	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> -	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>>   	u32 dsc_prefill_latency = 0;
>>   
>>   	if (!crtc_state->dsc.compression_enable ||
>> @@ -2191,18 +2193,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   	    num_scaler_users > crtc->num_scalers)
>>   		return dsc_prefill_latency;
>>   
>> -	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
>> -
>>   	for (int i = 0; i < num_scaler_users; i++) {
>> -		u64 hscale_k, vscale_k;
>> -
>> -		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
>> -		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>> -		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
>> -						       1000000);
>> +		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
>> +		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>>   	}
>>   
>> -	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>> +	dsc_prefill_latency =
>> +		intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
>> +						chroma_downscaling_factor,
>> +						cdclk_prefill_adjustment(crtc_state),
>> +						linetime);
> Calling vrr stuff for non-vrr stuff feels completely backwards.
> I suspect we should move these prefill latency calculations into
> the relevant scaler/dsc/etc files instead.

I can do that. Since these were only used to compute the vrr guardband, 
I had kept in intel_vrr.c, but you are right these are specific feature 
latencies, should belong to their respective files.

Aside from this, for functions in skl_scaler.c, what should be sensible 
naming for the functions/helpers: skl_scaler_prefill_latency doesn’t 
seem to be right as this is not related to skl.

Regards,

Ankit


>
>
>>   
>>   	return dsc_prefill_latency;
>>   }
>> @@ -2210,28 +2210,25 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   static int
>>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   {
>> -	const struct intel_crtc_scaler_state *scaler_state =
>> -					&crtc_state->scaler_state;
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>>   	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k = 0, vscale_k = 0;
>>   	int scaler_prefill_latency = 0;
>>   
>>   	if (!num_scaler_users)
>>   		return scaler_prefill_latency;
>>   
>> -	scaler_prefill_latency = 4 * linetime;
>> -
>>   	if (num_scaler_users > 1) {
>> -		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
>> -		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>> -		int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> -		int latency;
>> -
>> -		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
>> -					    chroma_downscaling_factor), 1000000);
>> -		scaler_prefill_latency += latency;
>> +		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
>> +		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>>   	}
>>   
>> -	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>> +	scaler_prefill_latency =
>> +		intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
>> +						   chroma_downscaling_factor,
>> +						   cdclk_prefill_adjustment(crtc_state),
>> +						   linetime);
>>   
>>   	return scaler_prefill_latency;
>>   }
>> -- 
>> 2.45.2
