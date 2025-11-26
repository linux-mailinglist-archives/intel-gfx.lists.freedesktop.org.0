Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37191C8A67C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 15:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F57D10E643;
	Wed, 26 Nov 2025 14:44:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzlsD2/i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF1510E643
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 14:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764168266; x=1795704266;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7euwr+TaUy7qRlVYe2Dj9/md34WLf/JOGSywE77YZ1w=;
 b=bzlsD2/iQx/+mHgnkUAJSfdci6LAuoqNXttAIYZsuR86P6x78324v3QR
 ju3hGJYFdJ2scmteT9qpCjlli+TbYlFX3Kql80Sqohmo9lKDZvghIgPJ9
 p+0hINT1yMKrLQthrMb7dbKcwOPBFLUnVUGyd5z3ndgAvJ0OYp6s3jNsp
 zgIX7H9ZHF0YGeXE0e/8tJU4rMpyICLA2NbdLF0lKwV8c1MT5ROWlvd3b
 A49Os9VGguGPDLFNigpMGjcLP5YOJrU39tBfjPnYMw0qfPPw30yHp/sY5
 bPZGECkxyM74/NZvqHgaeblQXOwAEQREkVNE29QLZR4lICxCRpAIM8H/8 w==;
X-CSE-ConnectionGUID: 8eos15XvSEmcgsESQMHXSw==
X-CSE-MsgGUID: tAHA7TIzTiGhZ82GOHCxMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="65210515"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="65210515"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 06:44:26 -0800
X-CSE-ConnectionGUID: wwSf6v33SkKlrKRychLAxw==
X-CSE-MsgGUID: 0H8v5l5MTxa946FZ1XDLXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="223910460"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 06:44:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 06:44:21 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 06:44:21 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.63)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 06:44:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ae8fhHlP6j6ed0EZFCoAUs7uTP16f39ztIceZCDd8b6WqZqq29PkgcIgXr3RAcaV5VIjv6vR6EyBOfmuuM77dPO37cQh1U4TzWMOeVMkM1wqILDMGeTfJusjdVW35REp3cGhvAsEZvpoIgdoGyXgLCkJZNNth1/+P6+jWcM8v9nYvqT91+j4aFnxofjJfckPG9JmggWElKb1+JmFiX8EBqWTMCdzJEb0PUKl4OVwxheHmDqlFJflRCTh0trNZCLXo/e6eplNXgTKfh/y23zVNbPrX5+S9t3W6maE5W9BbSTbTBKC7bIRg+wxPDstKtytPIH6ebRgqeob2OEMY3pvOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yH/cag53FmL3dlXl7xFnUk0aDPWJsIq8GeKVDgm7zik=;
 b=s64y9WX5gd5uyJcGYXj36ftZjk/GWW2ybD+q/RsddNZUgY+U5JIRayEo3SgqGt4hbH5F192tABeFPt40jnTpKoqrpflNG0g+ord2+oZfWT6c2MZjpAxYaAuiBLqBHFEOqOeDeZ2bip927d3I4WkMM56nRgOwdADkoEfmnUGIr37gjKiz60z4gz/3RQcfts4BHg+uUH+2tFx2H69qJ2aNL3qQU+y/x4Yakln5pQte36YU0JrXoFdDNG2XBsHfjiDRpMGwJ+7zffHVyGQRJxJGcUH6041n56uAcjIqE3sMljKBZ8/lMZD9mmkAvhReUm8RScY7n7WryhdjTea2cGDOwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CY5PR11MB6114.namprd11.prod.outlook.com (2603:10b6:930:2d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 14:44:18 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%4]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 14:44:18 +0000
Date: Wed, 26 Nov 2025 15:44:07 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Chris Wilson <chris.p.wilson@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH RESEND v4] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <rlfdasmdecsnrysslpge75chnyauhdstdkbcg2hookp2p5nw4n@rezccz4qt5hm>
References: <zzwquovbezyqrdrjnh2h64css43nhi7dcqyeavg3fnbz2joymk@wtihbwh4zito>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <zzwquovbezyqrdrjnh2h64css43nhi7dcqyeavg3fnbz2joymk@wtihbwh4zito>
X-ClientProxiedBy: VI1PR06CA0162.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::19) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CY5PR11MB6114:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fc26e4f-a9d8-4f6c-08eb-08de2cfa475a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b292TXZjOUU2QndoSFhwQ0QzZWc0TEEvUTEvOGw0bGxSa1lLVDR3N2dtbmRR?=
 =?utf-8?B?UWJjazk4R25nRklLc3A5MkpvRVV5NG9tSTYxNjVZSitCQUU5NHRoT05LRG1V?=
 =?utf-8?B?S2d3cktnRnJISy80dTloVzNNdDluampTYzBNRDJYLzVtTTM3Z3JZRG5QYzlT?=
 =?utf-8?B?NE5FUU9OTlVnV3BpTDFTRHY4YWNQY0tMWHNYZGxWUzRyTXlxdHZMUVJaZ3dD?=
 =?utf-8?B?MVUwY1FENjU4c0J3RVRNbFROK0xGVUQ2SENqQk1OSldrcjg3OXY0N3hxdjdr?=
 =?utf-8?B?NkZIQ2RYa1ZWQzhZWithZ29kRzcyc2xQTzFVaENWRWtTNGgwb2piOUNDWEZL?=
 =?utf-8?B?YjhtWTRjcEZYU2tZOTlSVjluY2RYSi9pdGZGRGlYdCtGQy9CUHVuNnBhSHJt?=
 =?utf-8?B?Zit6a1dVRFRpUlRFZzVsN3NmRzhkMEh0WXAwdFVMWnNGZHBLSUZmQkMxQm9U?=
 =?utf-8?B?eml1ZEQvS1UxTnZuNmRadmNNdndHak5TZGQwZGtrMFk0elIvVVBhendpUXJF?=
 =?utf-8?B?YS9PTVF3QXBOWUxaN3RVR084Y2VMd29ZUkVuK3pUL1Zqb3lDS0JkcVBaSWZj?=
 =?utf-8?B?eTEwQmR2bHdSRjRueDJhMU1hSUJPTnJPbHdqTWk4QXIwWHc4cHZTczZpU0dn?=
 =?utf-8?B?NEkzMFpkK0MybEhMdHRRbElGMW9oamZEUVo5R21PL01hTjNGR0xIZkZOLzVs?=
 =?utf-8?B?QkJsK2dtNk5EbHlIUXM0aGdTbTZwNEE0bURlQi9Mb3cxa3lycnh0SjNBZS9S?=
 =?utf-8?B?NVFLU1N3eEZIUWlyVlFaS29hbnlRZzNRUGtHZE9jQUlWcVZud0VnN0pZRHJW?=
 =?utf-8?B?TTlVOVR0NzVVSy81aVA5MCs1UTYxM1F1THVabTBkZHRPTkN1Y0M3MHdrUzFL?=
 =?utf-8?B?b0VFdUl2Vzk0WEw2K2NxUm5hZzZBL3NOQURjeWR4NlVxcjZvUHJ3NC8yZ1BT?=
 =?utf-8?B?SE9Jb3k0NEpSV1NoYmF1aHhXZlpJUEVMRDBKOTNQdkdBbzhtc3pCRHdkbFpm?=
 =?utf-8?B?YmJMWnU1d2pKSk5sSzdkMUZUVldJUUZjUk9sdnBEQUx4OTcvaXgrMjhVaFZi?=
 =?utf-8?B?MjgvdFZKVzl2bElIT0l4WS95NTdpZkdtay8rREZTZjhPbjlVUlN1WVhGWFlp?=
 =?utf-8?B?MVl0cnE3K2NOYXQrZWhLK2I2ekZJRzZjZWI0RVhqMGU1RmdpVTNiUk1ERUp5?=
 =?utf-8?B?T21nTDRBNStKTjJZRE84dDRUelVBL0kvK01BeUhMUGJKZVQrVm5pY3haZWJs?=
 =?utf-8?B?MmJtTWNERzYraGppZWlqcTd2cE5iQnY2d3djcGVha0ZrN212em95VW5TNWd4?=
 =?utf-8?B?M3FPYWgySkhJakEwUkpTMEx4UFB3d0xGenRDWU9nTVo1M0xJa2ZGVkZPOWV4?=
 =?utf-8?B?RzYvcklkRlRNb1FQSmxqRS9KcEtxZ1I5NzJYWHk3T0t1eTl6Um5JbmJYd2ds?=
 =?utf-8?B?ajJRaXNWL1FhTHY2TDY3LzYvYW14bmNZdnViZTRJdE5Jb2gyRUJjdmlTQkRn?=
 =?utf-8?B?V01YNUVJaWdwUkZMcVMxbWt3QlEzRStZMXRNZHk3RDJzdWZobVhURklCbVpM?=
 =?utf-8?B?V1JISTdvbHQvTFZHRHV3QU5HVG1oakllcUQ4MndOS0FveGtGWUZ4U0VNUVZR?=
 =?utf-8?B?VnV0NEtLeGExRGNZb2NKRHkvY1ptWjR1dHpRUEVlV0lrMDlNWDAyNjJteDgv?=
 =?utf-8?B?T2l1NE53c21FT1JVRWN1eHIvUDh1dnd1QVpYWEVrRS9FbUVsL3dZQ2pYSlZi?=
 =?utf-8?B?cHQ3anIrc3Vra2R2NVhGZHp4SkhTcEZmY2k3cFlwRUUvZkZxUHJiWkJVRGpl?=
 =?utf-8?B?MHJ6L2dlUFAyaE9tT3pad0NIUVdYMnFjKzY2Q05PV09UUzZWMXJFUStHWU80?=
 =?utf-8?B?U0paa2d3VzRFRlJnRTZQRHpMU044anhvVmQwVDBHZTdDMGZMY3BZNTE3R2gr?=
 =?utf-8?Q?dclxT8XFSHZZ2FAPXPFtWhMySTK5nLFo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjVLdk1pbUkySDlXbUcvKzMxSFJKRTJkQkR3VUtLdnd2cHdDVXhnNjU0Vy9z?=
 =?utf-8?B?WVVkdUhFUGF3cHIwZnVMS09pSlRRYkRzNlA1OXlaTzBIRDNyc1RUWUlzMzBK?=
 =?utf-8?B?V2Fhd1NlMXdYMGE0dHRLZGNkbFRNT1NzWThiNjhaYVZnY3h5amRMdTJISlVD?=
 =?utf-8?B?L3p2a3JCZkp3TFVYcXgwbUFReVRHa3NxWXR3Nm03dkZqZGZTcmQ1YldnVjBQ?=
 =?utf-8?B?OXpSQVZ3ekNubVRnMkhJL3krUlZHcG93Z3psU09JWEsrS1Zlamsyam5ORzZ1?=
 =?utf-8?B?Y0d4Z3N1MTRXL1AvckdMN3JZWVhzNFFxeW51UzhTY2RnTE8wYjBqSmdvUC80?=
 =?utf-8?B?cy9sbWg3djluSmxQY1JwT1ZZR2phRXoyWk50UjdZVHl0aHA2KzE3REp2cmoy?=
 =?utf-8?B?eHlGMmcrTnlUTm5FSUw4bnAxbHFnTjAzbDZnRmJ6dDNFUjF6SHlpREwvTFZC?=
 =?utf-8?B?VVFCSUhNNUlqOCtETU42OVZraEVYZjVSRG8vVzJCNDZlcGwwaEwxcUNDRzBs?=
 =?utf-8?B?R2JwVWtCb0pzM1ozNThPMVVERnU4RkVESlIyK0pmcmNzUjJ0cVlXREp1VEJD?=
 =?utf-8?B?UlZhZmIvNHFSZEJCUllRd09SOW4vd1k0NjJ3MHltdVloWDZsZWNhUkp6eTlV?=
 =?utf-8?B?MHV2M0pZQmhTa012cU9Ea0VONW1KS21UOXlTM2FudVdMUi9NTm5oQUdVcHNv?=
 =?utf-8?B?SGxZUHhYVWc1QXpHU09YSC9FbGhIWWxNNlZMOHNFcXk1YkVQU2F6c0pwUWUr?=
 =?utf-8?B?aEJ2S2J1alhSeXZvbnFVMG9aVDh0WUM3NGJObWhmSFpudG9McGtYT3l4bENF?=
 =?utf-8?B?ZGRBSTJGTFZ0QnJBbkM0eGVuM3FVWkhkWHkzR28wSzh4Rllkblp2bjNvb2cw?=
 =?utf-8?B?S1dNZHF3Ymx2WnFWY00yd0ZqMWRndnIyd2grS2FRdUxrZC9yZHpvY3NPZHd2?=
 =?utf-8?B?bjhreDBsT1U0U3c3TXM5cVFEdUR0ZzZaREpRTldzMTNxMDFjSnhWUkNlS0ZX?=
 =?utf-8?B?eVF3VDRFRUZQVDZ0SjBTM2hUVE9VMzI1d0xCdWkrNlhSa0JjV2lSVFFuUUl0?=
 =?utf-8?B?MUZGY0gybUxFSXFZaGdKS0hZVTA3VVp0SVBoajBtZDJ1dWpmNUpRbjRRODFq?=
 =?utf-8?B?RWE0MFVITlQ5aUk2QnA1bnEwUWwzdllGQ0tDNHlKT0ZZK2xyWFNGL2hrM2hY?=
 =?utf-8?B?Umhra0phQlFocklMeExhU1pGUVN0YTFoZGlYYkFBdUc1QU94TVlTWlZNOEt6?=
 =?utf-8?B?SW11dVZrdEpZRk1vKzZqN2pSbHNzdTRYLzN4bG9TUmtZMUsrbExsaWE0NDJs?=
 =?utf-8?B?OTgwV0hDN0dmRFVEZDlMdkpSSDNvVTRVVVZYSWhtTzZVcmdhYzNaaGY5Tnh4?=
 =?utf-8?B?Z2FnSjBjTFNaM29OTHZuK1lzQ1RnN0lGcFROWWpQVm9TYm5GYXB4RExXWFdF?=
 =?utf-8?B?ZFh3NFo5aFVBWGxCcUY0b3lrdkprUVJsMndzaXIrbXlNTzUrbTZiN3Z4aWhm?=
 =?utf-8?B?QnRMY2RsczIzamhNRW9pdURNaUJZZUhKYW1SMGVQZWhGbjZyaG1YeEtaVHhw?=
 =?utf-8?B?OExRVUt5dHg5bXRGdTFyT2JuNmdkY2RUNGRlNjdtKzRneTNRUHR3ZzF3eGx1?=
 =?utf-8?B?aC9tTEM1T3NFZGJJK0ordFA3MjR6dExQaWlXNXpWdTFTbjFTeGpjQ1ZiRXh2?=
 =?utf-8?B?M0dVV1Z5NzNhUTJMajJYeEZ1T3RFM295OGUyd1AreE55NTc5RThseXVNUytT?=
 =?utf-8?B?czF3VUNadzZKcVl1bE93NXl3TzQ0NmpVRVpxV3F1aFpUa2RCTFYwV29nSVpv?=
 =?utf-8?B?WmdGakFOem96Ni9tVC9KZkM5RjNBeWJZWUwyZnB0bWtoTklvQW9JK0hLbEdJ?=
 =?utf-8?B?UkVEZzNBSDY0SGs0cFpIUWo5R0p0c0RpREwrN2hZL0JUcWloOGNNOTVwS2p5?=
 =?utf-8?B?U295WTduMlZmSzZONkZxR2Zxb3dCRnlFdmc4MTNPV05mVHZ0TUl3R0k5Y3I5?=
 =?utf-8?B?SUg4Tm9LODlKVFo3M2lyYkpHMjJuQWVlcXk0RHd6dE5FYWh3Uk8xK3pYUEhQ?=
 =?utf-8?B?SDBMOE9FSVViVkxHa255NVZoNzhiYVI4WGxXZm81Y29ITHRiVjNoQnpPcFJx?=
 =?utf-8?B?N2QwbmllN1Z4S2ZEaFl6Z3UvVk16bTFXb1Y2R1diZHNXM2dQcGVUY2FvYTRn?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fc26e4f-a9d8-4f6c-08eb-08de2cfa475a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 14:44:18.6402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Ydcg9XxYuJj5QVOLu6KrBz5Lp0/YAOpDAp8KRLD1QWMPbHYpQKl63VnQaTHA78AhZXD0kTMcDGOdQIJlkAkQU07b80O6lnxaiMOn9wDDxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6114
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

On 2025-11-26 at 07:49:23 GMT, Krzysztof Karas wrote:
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test, a mock file is opened in
> igt_mmap_offset(), which results in allocating GEM objects for
> page table structures and scratch in GPU mappable memory.
> 
> Then, also in igt_mmap_offset(), the file is closed (fput) and
> the cleanup of these objects is scheduled on a delayed worqueue,
> which is designed to execute after unspecified amount of time.
> 
> Next, the test calls igt_fill_mappable() to fill mappable GPU
> memory. At this point, three scenarios are possible
> (N = max size of GPU memory for this test in MiB):
>  1) the objects allocated for the mock file get cleaned up after
>     crucial part of the test is over, so the memory is full with
>     the 1 MiB they occupy and N - 1 MiB added by
>     igt_fill_mappable(), so the migration fails properly;
>  2) the object cleanup fires before igt_fill_mappable()
>     completes, so the whole memory is populated with N MiB from
>     igt_fill_mappable(), so migration fails as well;
>  3) the object cleanup is performed right after fill is done,
>     so only N - 1 MiB are in the mappable portion of GPU memory,
>     allowing the migration to succeed - we'd expect no space
>     left to perform migration, but an object was able to fit in
>     the remaining 1 MiB, which caused get_user() to succeed, so
>     a page fault did not fail.
> 
> The test incorrectly assumes that the GPU mappable memory state
> is unchanging during the test. Amend this by keeping the mock
> file open until migration and page fault checking is complete.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
