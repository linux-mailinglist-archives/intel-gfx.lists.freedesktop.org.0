Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D07EAE3AEE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 11:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A751810E2C2;
	Mon, 23 Jun 2025 09:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VLivkD2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCFB10E2C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jun 2025 09:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750671950; x=1782207950;
 h=content-transfer-encoding:date:message-id:to:cc:subject:
 from:references:in-reply-to:mime-version;
 bh=GdeAyA+LLGJ9sqn9UIXRlnC1DhRLQC6Um6dAIpUNODA=;
 b=VLivkD2RH/TsobK4BrMSPJK9tS2wbnfc7+1ZKzVqb9kszPcwG3lKyvu9
 hgBvSMnHqY36/VorxT/KORYNANaIA7TahntC3gxzBFYCpm2ZJ9NL5BBqH
 iEfOzigbWYAJzJVt2YITXCJVxoEw0JL5n+BG1X0plyi7a7P6YLnze9ZcP
 tbS8HDSxG/ab2a5MVc2kg9RM+39sB5KsL9sofFFxJDuKsShDOnVReu+o4
 y6HW2Yk2h0JihKHo3AC5h57FfAABq/M4BRJvnza+OkznQqXlHE+Ied5zp
 +WExxQmkr033JFYA/ZM92svKaHuPx/C23/7B4tJlH4v9FKVcc131Oei8H g==;
X-CSE-ConnectionGUID: /j/SdGloQqi9nGVOmRaP/A==
X-CSE-MsgGUID: UUyZ4eBHTOCiFUqWveFCLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="52841877"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="52841877"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 02:45:49 -0700
X-CSE-ConnectionGUID: cto78d+fSl2L6M/4qYTTTA==
X-CSE-MsgGUID: UsdKzVfvTKCpdzKehFEWrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="150972813"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 02:45:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 02:45:49 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 02:45:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 02:45:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rwtkWcPoZzXKOk6rX1tW414oaYtWBHqGWJH57rvMzh6Io17Qg2tDE6TWLwa/jKkmFFBEzUTUzuU9SnMXL25qUXybQC7+3U/bzhtczUiVCcXHfGBumdEcZJLV1cAsOhZT+66yquf1IJUn5DEBc65R8Fum6Q9A2wREas5Ax5jlTNHoci/E4YFumJy9wZ5Mu9p9aym/whr+EWnVhaQku3Mrg2rLQCtVDyRgBN/CyrguJZAHjY0dBUpnzgkpD9TDTKEiBe3QuiuY1BTa+JR++SWoatWi8c0QvaD08hii8xqxZzA18+LK1gKxaxtLuBlDkY4hcSxKTV/DJN95AwGPAeIKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1avwYWXx3Dc1JXXQBJ4iRH85zH83Pki/y/Pxta0MH3U=;
 b=n7E7ejhunaFk3r3wEToeN5YUEaxH2n9lT3cf7HZagu0cCgij4Bt4roW4n2g7XFM4wJjXaUkC9mYJ4KKa5GLpTNO7WNb1v3dNOKFY4MNVpFjxe/0KNFmTqUfaaXc45Au/rf1f8bPKq94ZQlBmIMss2zdSYFyWDHCRsStZw0FXy70qNb+PFhjLiG4okExlcxmlHiAcl6N1AgAMqPpdFDDRbSWKW9v0Ja5ZrRF2vbdEa3Ecuuc2luNv1F5+WIjxiIhr2XAu5ZvpWNNunJD8d7wMraT8JGfN1W7822/g6ebJhcnwtz1KpNupUOOKNVZhn/+eGhebxWLPAq0EBWAvBijxew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by LV2PR11MB5997.namprd11.prod.outlook.com (2603:10b6:408:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.27; Mon, 23 Jun
 2025 09:45:41 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8857.020; Mon, 23 Jun 2025
 09:45:41 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 23 Jun 2025 09:45:37 +0000
Message-ID: <DATTEPCRX2YV.57K6QYZHE446@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 0/2] drm/i915: Miscellaneous clean up changes around
 i915_drv.h
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <cover.1750251040.git.krzysztof.karas@intel.com>
In-Reply-To: <cover.1750251040.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: DB8PR04CA0006.eurprd04.prod.outlook.com
 (2603:10a6:10:110::16) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|LV2PR11MB5997:EE_
X-MS-Office365-Filtering-Correlation-Id: 4acf6174-08e3-4205-8c5f-08ddb23ab79e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Mm8yeDVScVUwc2JMa1BCbFhQQXp3cDBtN2NrWFVBVnFneXBDZm8rTUlxMUVq?=
 =?utf-8?B?bjYwakhGbDFXMmVPbWxPdHNhOU1uTGZiUU1ZYlFTUGRVZ3BNWC8vSE8vYlhn?=
 =?utf-8?B?eVQxSUx0aUFDMktmaXAvRFJYcTRRYThYQ0VQaU9hOUhjVWEvZXN1Nm5UTEFj?=
 =?utf-8?B?dEdGaEZ3ekljSGtIai9hc0gzai9iYTZPQWhYODBISDhVdGFwa3p1WTc4SFRx?=
 =?utf-8?B?T3VTcnpyZGhjUHJqUkc3SEF3cnE2NEtUWHQveW13VFJOR212UC91Q2h3SUdI?=
 =?utf-8?B?VHM4YVk1T3dhOFo4bTFQZlBtU2pUVXVHQmxFcFpDSzZhNElGR3dvanJTdCtC?=
 =?utf-8?B?Q0ZKTmtKby9ENWU3akFPTVdDRFYvL05EaEhmRFJ1a2RHaTJDc1BGek5Ld2xw?=
 =?utf-8?B?U3V5OVZrMUora1JpaE1YbnU3Si9PelA1em4wdFBveU1MNjBha2hRa0dxbHZq?=
 =?utf-8?B?WWVDTHBQOGtsMVlMOHk3MkRXcmZreWVQU3p0YzhTcmJldmJxK0Z4TElsdGpY?=
 =?utf-8?B?dWJoM0JFSnNyQmNsbi80L0hFQkhUZ3BSazA5N1kzdFVSOEdFQWJxMTFhOEs4?=
 =?utf-8?B?YnBpWFE0SDN3NzU5YXRtRlBubkxRenk1b2dMUXZhaHhvQzNodnF3eEhQNGQ3?=
 =?utf-8?B?dk43ZkVsZFFDQURvUDdJOFJrV09MUHNlaWc2OXlCNUkvMmhUa0gybDBITmJL?=
 =?utf-8?B?VXNYc1Y1VFc5SnNDMFVBVFRLSktWLzcxREpDZUNSSlZBejhXMkhxTzZhYlQw?=
 =?utf-8?B?KzJMbXlubXJLNTJ0U2N0Y1ZHbEIzUEYrTlpvcE9XNVFBVXp5dnN5QXk3djIw?=
 =?utf-8?B?bXd5RnlmNTg1UTdwWUNRSE9YWUU5R0ZhQTVtYXRDdzBSSmp2T2JqSVdXU2xP?=
 =?utf-8?B?dWJUV1JlQlVJM0ZtR3cxeWRNa01GYWFNR3hDTzJ5eFN4WkY1UkwxcUZ2QkdT?=
 =?utf-8?B?QXVEWERYWHFhbktHWTVCMGdDa1RTUXRYOCtGbm5aTzg1ODlNTy9OdmhlYzhB?=
 =?utf-8?B?YW84cjhSNnJLZ0hKVzhtcGtHREM4V1g5ZkFlOHpFWC8ycG1qMUo5cENXaXZZ?=
 =?utf-8?B?dzdFdmhkTVRHMndTclhLRkIxcEN1OEFsYy8wL0dWRFFNVzZsQU5yOWZnbSs4?=
 =?utf-8?B?eEFQajg0bE9sMFpJTXNZYmI5UUUvdzlXNjlhVlFlUlpmZUh6VDBpUEdhQjVG?=
 =?utf-8?B?My8zSDI1YjFXSDJDSjRoZ1BBUWtMY1I0WTlkRVV1ekwxTHZvYm9sSXV6YlMr?=
 =?utf-8?B?STUwNlliTnBwVHN6K2lISkgzQTR0M0F0T3VKb2Z4QjB1YTc5dnBodE82ZXZG?=
 =?utf-8?B?bWRWaXFaVmxYUkVITkl4Q2VTNk41ZGVMRjhLb2swdXE3OTNTKzM0TVdrbkN6?=
 =?utf-8?B?cTd6N2xCa2U2bHA2N000SGZQZ3BqdzVPWGhHc3p0ci9laHA0anNwazMyOGxO?=
 =?utf-8?B?cXhjNGFSUFBpN2hHNkhoUkpOVGhGaW9UNmJ5SHJCSldFMTNhTnZ6ZWpQZFBY?=
 =?utf-8?B?RVBsS1hwMXJCODk1SXk1RTdzRkVzN2ZjYUxSay90ZlBYc0pGWTZPcFVDZFA3?=
 =?utf-8?B?c04xVG1mV2g4QjdpRmNMUm91U2pWcVdtdHRCWGRKRHdNTE1sNDQzbzlhTmRn?=
 =?utf-8?B?Zkp0NXc1OGE5M3hLS01hQWtSVWgwMWZJckYyTkdGeWVZWll5cGt3SVJZdUM5?=
 =?utf-8?B?bEJ0dkhDRmRFbklMdG8wb1lwL1NCc3BkbmZKblh5c1l1L0RSUnY0YVc4QWpO?=
 =?utf-8?B?Mm80K2VkbjZhNC9JVXFtT2ptRjNPMXhTOXIwdmJtWk85aVRNZlB2SW0weGNX?=
 =?utf-8?B?SGVNSm1IVlY4U0doWmdUbUMrSnBleVM3Y1doZjhEOVZlaWtMYU9wbnhsWFFB?=
 =?utf-8?B?d0hvZE9YSlVGa3RWVHcvSzA1VHJHYWFXMkJpdjNqU3dWMUxrcWRLTnJHSTJP?=
 =?utf-8?Q?aULuIGN1dxg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWpQL3VHYzNFdGppeTN5RlA2NlJYL3JMNlhxemdGa3IvUm9YYjRpQlB6WVV2?=
 =?utf-8?B?em5lTmM2cTM4ZFNWUW1CQUdyamx4VzlxcWJxSXJUVGh4TXFsdHZ1ZWVZOGVM?=
 =?utf-8?B?cklTdVRYRDJHNmRUOFB0NU5HMHF2UldFay9LTkJLNW94WkpJYVFwbVdpVDky?=
 =?utf-8?B?eHZScjhKbWxsVlE2endGYnN1MEp1S1piWnlJOGlJM0FaWTVYMGgvdy9wV1FT?=
 =?utf-8?B?Q0ZtOTcxQktmeTJHSU5LWjl1TmFYUHliVG1GRmxhNWZYNzRqaVRoOER0UGkv?=
 =?utf-8?B?aEhUTzJtNXhkS09EQW0wdEx2WHdHd0JweEJobC9hbDBGT05WUDVDd0xSSFQx?=
 =?utf-8?B?R1NCZHZIV2FQcUVBQ3Naa0NDR0Z6bnhMTTgySS9meEtlMDQreFErY291UnZo?=
 =?utf-8?B?YWV5YnFDbXkzNmxzUnFRT3Q3MEZJRTZJYnRPeUdoc0dlaWZDcGpFS3VMTHhm?=
 =?utf-8?B?ZGVxMjY4UE9GSDZvamJlRjhMaXgyS1MxRVljbUx5MkF4YTFESVFzbm16MThI?=
 =?utf-8?B?K3hIb2JiMFd6eTVOemZaYVkyZ2NjdXQySy9TVVlYUDM3aWZYaUNGWlJHTXp1?=
 =?utf-8?B?eGc1NDV2anNrTTN0QkVqUDBCcEVyblhuVUQrQm9lZlFNVzNRVyt4cUl1ZW82?=
 =?utf-8?B?d0lJbTVHeDI5NWZ5cGx4dThyYWUvaExwU3liQUxtQWJkNis1ZHZHOVBRZDVt?=
 =?utf-8?B?bmltTTg0RmdPQXNVWGg1aTYrN29WVGR5RmhDYTlGeW5YZGdBUVhjSnZCdUlP?=
 =?utf-8?B?a1NpNCtSMVNqVHgvd0NyekhPYmZQMnh4S2VycEpHc1ZMZUxaMVNFblN0VWJG?=
 =?utf-8?B?dytUQU1aMzBieWk5SXVNZ1V4YUhJU2xlbW1RSzJPdlUyMFJ6VDBFbEc2ZXRL?=
 =?utf-8?B?K0dxeDhwb1FYendaNFVGS0xpRTZBTlFPcU9HVzNSMDRxMHlPbm9kcEtQUXV6?=
 =?utf-8?B?T0FzcnVTUjR3V0tCOHBsZXFVamRhbXNSeWF1MmtXeU9pRlMzUFB0VHJveWxL?=
 =?utf-8?B?ZW16bHc3T0x2NjVFNUVCUXJ1SDhnNVNWOTk0YVVuMjBQWjRwcFIxQjFkSS8r?=
 =?utf-8?B?TzhwbkJnQXdlYUZXQ2VSTU42VWV0b050RkFKMWNmZGJmVGFjVDBQblJGNkNV?=
 =?utf-8?B?bFRUWUU1VTBESmZrVEIxVVZoTXZaY1Y2SG9ESHduVWxpeWd0Q0ZwbG52WFpq?=
 =?utf-8?B?Y2FKRmFuVFFzUzJ3djEvYWNVbENHN2FvM3RyZXpWdkJqaDhtenZBODFpektV?=
 =?utf-8?B?d0xMZ3ZsRjhFekRiWk83djlGLzJTY3o1UUVlWWFOMzhCT05uOHJMc0xDZWxR?=
 =?utf-8?B?WlVGRzFlZlRocG02Rm40YzBmK0JhZnMySytvTEkrSEtOUnRxS2owKzhRRUhH?=
 =?utf-8?B?TWlrSzFYdXhXbnVScUxnRTF6N294QjAxVFppUWppb3BaQmxpYWUvSGRXQ0xR?=
 =?utf-8?B?aUU1WnRWQUxSUm1QVHdiR2tSN2szWHFOamtac29sc0NYdUdZdnNNUnA0K3cz?=
 =?utf-8?B?RHJ1TXZrcnN5L2I4ZStRYXZHdSsyQlAySGYzYXgyNFkrbExBbllBWk54NnNE?=
 =?utf-8?B?ZzdRRzFyQjBna0lHaEE5M0NzVFFHZVg4bFAzWEdLRS9ZZVJnRjdIZmNEay85?=
 =?utf-8?B?UVk5TzhqaHZNVGVnZ2JuQ254Qk5VeFdKeDFzZVEzQ1h2TG5XSTQwalhHTHJM?=
 =?utf-8?B?ZWtVT0lhSmZGV20zQ3A0MUhnbUJGOFc3N3dOUDczVnczU3p1SFVtS0FXSEd2?=
 =?utf-8?B?aGRuaFFNdlVsemtmN1FtOFk3RzNoQ0tVaUVLOUxMRGd0QitPb1ZEOEppM0dP?=
 =?utf-8?B?eTR2STJWTnJyMmF5ejFUQTJHUmIzRzlIYklQMytmdnpIMytEZkpiUloyS3Bm?=
 =?utf-8?B?U1MyVTBQSG1kRVQwWFRoY1NURWFNcjBZanErVEo5UGkxc0kzVE9yU0xyQ210?=
 =?utf-8?B?cjRNZGwvdDRndHBaTGdlaUJ0R3gwOTNMOTNqSUhIY2p6Ni9Ha2VQNmJoUU13?=
 =?utf-8?B?SlE5UElnWjB4ZGlWLzRwNkF4QXdPNlBnRHg4Y3R5eldXY0I1MHdRQmJzbzNx?=
 =?utf-8?B?eTVVbmV3TVNRaEhGeFVHMHpDUFJPRTlZVkZzYTFpbStrWFI5Q2hnMGNISU5y?=
 =?utf-8?B?TWJ4RmpXaHhIcEkwbXdTbkIzYnFkRnZIdTJTS21Hc0NNVVp1S0FXZnZVbUtP?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4acf6174-08e3-4205-8c5f-08ddb23ab79e
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 09:45:41.6667 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V83ua+MkN8hTUQi4XH3zbtbPEI9P5j6nDtOxuyaIC+6fcRL0340ViCcH80GevCXjkiIiliQZ2fM8llfTZLkdWZcJz2D/Zc24nPmwjPDaWC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5997
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

Hi Krzysztof,

On Wed Jun 18, 2025 at 1:50 PM UTC, Krzysztof Karas wrote:
> Krzysztof Karas (2):
>   drm/i915: Move out engine related macros from i915_drv.h
>   drm/i915: move GEM_QUIRK_PIN_SWIZZLED_PAGES to i915_gem.h
>
>  drivers/gpu/drm/i915/gt/intel_engine.h | 31 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h        | 33 --------------------------
>  drivers/gpu/drm/i915/i915_gem.h        |  2 ++
>  3 files changed, 33 insertions(+), 33 deletions(-)
LGTM
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

