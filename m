Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 894179B04D5
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 15:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81F110E3F3;
	Fri, 25 Oct 2024 13:58:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/dgOnwN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76B0F10E3F3;
 Fri, 25 Oct 2024 13:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729864720; x=1761400720;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=0X9qvymD/8Maq4uM8Yo70eodK+/q3QD91H/SbKQX07I=;
 b=P/dgOnwNgynXKhUIilPmnruJq1S3hi5yJ3ZZ86h4N4Vrlcbelmun9dPk
 Vuw7lTr2/Kr9D428vmcD1FneUVFIGMadscRoiZfbILJ3XYqHa+5HtMbLw
 aMa7htm1ebsYyVWqnD3F+slMIj43f9GiEfIzQ0pl/RbpbLgaIo9ygEsac
 J9130jPkdzCTRNz4cV9nEfNpf9n0RjAU1OiyjusQ4CvcM5fIA/eX7boeJ
 P3TOt1vaFG97lzmvxoRyOEfMaYdjKuDIjcxtVfNUszWxc2L3yI46u8K6G
 IoOS6RqF0+pJOyhkUEdkaAgp4GL+kOEsfU5j5RhiUkG2WofgJwEc1pEBY w==;
X-CSE-ConnectionGUID: lPLhBRhxQNeMnWLss5S7Hg==
X-CSE-MsgGUID: cKH4U7ptQgC9YsoFvPWXmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29478288"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29478288"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 06:58:39 -0700
X-CSE-ConnectionGUID: Lum0RCVGTvykR4bgTKToPg==
X-CSE-MsgGUID: yh8P0jmkTyCMEz97HyHK1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="85479467"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 06:58:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 06:58:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 06:58:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 06:58:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CQztkIDEhmFpcpJEaGJ37lO7UVa7YUxB5N9y1uZeqkV9Gt7rTz1ifIfwt9FtjxkD2z09JQ3w/XNVBmU7NAnfcmb+WC9Y7OFfrL8l63gPhRruXqJGhIwwCPtlY632sAPX/e6naeiXm6D7Fd4dBUoLsE7q/tm5ZzbmAMhYAQTg/bf3skuDomFIDGDldM8h1Vq04w6Fgdc4p4nlbfVS5cccItgFbNvHBLCQeR1SupzHn5weysWW3T2cz2BMMD1QcinefChkFSSaNQS0tKluobsyUYtxiqXGu/YfSG1wnfEv5hP2S0Ve6zFGW8pry3yvh/1Yc0WZ3haYeQbxu6cPJ9p8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oCy+89M4IPaG6Tvl/Nmjok5oQrcdPJFgbXETgawP09Y=;
 b=I4bA8Jc1e3yMmFHXoIe7mSbxM/r/N5P8zpxT/sqFj+OeqZSlHpKTqk1mwivAcp+9TBYL0tjTJacZvsOYgy9PhlXgvJ3xFqriUT5xf+5fvQbhp9LaY3OQSxBBcqz0K87ytAkwj6aUCDvnZMc2Qa46V+RnIS07FSXbVBP4SyjfHf8VEgss9hIv7Q9Oe+dgYtQ83MGYC5lNVO1d4/L07g6i/tU/iouA8ZRMYKr1sq6CXV9dc1EyxAoX762CRk4PPs4mNHgqPnJiaKA6Y0Qny43cEfAk4ljc91PA+5q9naPXO2yY9Ux87bcPJKwc3W4sqvnR3MiFj+r1oSkYj0p73d+jfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB5175.namprd11.prod.outlook.com (2603:10b6:510:3d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 13:58:30 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 13:58:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241024223114.785209-12-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
 <20241024223114.785209-12-clinton.a.taylor@intel.com>
Subject: Re: [PATCH v4 11/11] drm/i915/xe3lpd: Power request
 asserting/deasserting
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>
Date: Fri, 25 Oct 2024 10:58:26 -0300
Message-ID: <172986470623.1548.4059296026804586230@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW3PR06CA0022.namprd06.prod.outlook.com
 (2603:10b6:303:2a::27) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB5175:EE_
X-MS-Office365-Filtering-Correlation-Id: 85cb6535-9f94-4c2e-8214-08dcf4fd1b50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QittQlNPOGdXYldkZ0Exak5zb1ZKcnZuaHZ5N1BGZXlJc1VuaXIwOGlacFRI?=
 =?utf-8?B?aXkzV2hsUno0cS9SUklVZnBqRWloWEtiZ1hPdk9oeG9vUE9PTHcxcjRXVFFw?=
 =?utf-8?B?aXlxcDU2ekxBKzg2d05oMVF3TjdGa0FDTldVakhaUFNQbkY3dGhucmdDNTVk?=
 =?utf-8?B?anJWZmdNeG5pRUFkU3JxYlNxUktGekVjQkVnZW44bVJRZU1iWDRjOWxmTTlF?=
 =?utf-8?B?QytaWjVaSXpZRTZzQTQ3Uk1pdzJkcUJxZFRQZ0dwZVJLMjMzUGJNZnBVZjFo?=
 =?utf-8?B?TFNQaHgzUk0xZ1lGVWtKTWs0SzB2TUl2aE5TRjJDVEhNS3laS0U1d2x2NCtB?=
 =?utf-8?B?bjAyUHF0UWxxdXBYRDhrSmxIa3ZLc3NldENyWmJpdEE0czBNVkhzczgxM2ta?=
 =?utf-8?B?clpNNTNHQ2RDMUVTbHZhbWN1a29Ec2xRbXNKU0hRVVdaTnoyRUU3eVVRMDF1?=
 =?utf-8?B?WFBHR0NYalQwMnRLZ1dDY2tlS2J3Y2p2K01BdG1jVU5wN25qeDdXdjM0VFhC?=
 =?utf-8?B?R3JHY1hMVTUxNHBaN0VQQ3U4R3Q5THNDZWhKQllFSnhIeEZmZXVwRHFQKy83?=
 =?utf-8?B?NlNOSVYzNG1EVEJHM3B0aTlOdG90WVZTb01zZlFBWDE2b3FLOGJxR05DWGx2?=
 =?utf-8?B?MWxOYTNqUDhWbWkwR1VJeDlIaitML0xUYy9DUEw3aytZSlB1R3gxSnlzWEdP?=
 =?utf-8?B?ZGF6WDlLbjZmYTFWQmNhNU0yYjBzOEZEMzNQNVRjcXdGdVcvcGdZQ0xxUUMw?=
 =?utf-8?B?VkUzOExCamN4TWRJcVV6VW9LbDBwK1pFUGg3QUxDVTgvQkVKYWtxdE1ZMTF3?=
 =?utf-8?B?bHRLdnloWUhaTEhEOHlrem01N0ZZSkZKQmJCVUJzd1p5cG1VdVJmZXgyOVFl?=
 =?utf-8?B?cDNDRGc4eHU2bVlnK1hUK3Nzai9YdEsvTmhuNUcyZy9JYURhUE94WkJlL1RI?=
 =?utf-8?B?VE9vVHZCSmpYU0JrZkJuRjRhVFVVdDFzK1JiVURpd0dyNE11bnBSR21uenlE?=
 =?utf-8?B?cGh0Q0tsdUxLMWVneHBEV1lSdnlPenZrV1ppL2YrMXV5NEVNNVkwMEVDYXNw?=
 =?utf-8?B?RzN6WGpwKzVqL2VhSWpkejFTRWtFSWVxU2lmYWV1dkcwbTBVd21yU1ZiWEN3?=
 =?utf-8?B?c1NXYjlwWTQ3d3NuNDRBcVVpSFpJY2Y1STc0cVVOTzZKM1JEQVEvNnlIeEtw?=
 =?utf-8?B?RS9yeXljbmJPYjVYeVZ5dTdMdzNmWGJYa2wrVEM1VlZTUjAxYS9IZXpBTGJD?=
 =?utf-8?B?Nm9QaElHUEpyTDNDRW9XL2kwMDlKcEUxanBaeml3TEl4NlVWa2F6SHQyU21O?=
 =?utf-8?B?T2ZaMUlra0pqdnZMT0NVTml3aWU4cFNPeFNQWnhIdjFJbmJMVktOcXRYYjY0?=
 =?utf-8?B?OEZsMHc1V1htWjloMzBRb3B1TjhpajNZNDB6R0F3Qy9GYTVWMFUyVWVYL1dq?=
 =?utf-8?B?RVhRSnoyQXNCM1JQanNLL2xLbnFadjVIalgvUDJQeEtZbVVTRUoyeGgxU2Nj?=
 =?utf-8?B?WWtzemRjdkFRcEk4b0JiakpyQUNOT1BMbi9lSEY3WlFRY1BwRmN4Ti83M1cv?=
 =?utf-8?B?Qmc0UXZXUDFRT21jNUpRU0hvb3VSQmlaZHBWUjVTblFZZXVPTmluaEVEakRR?=
 =?utf-8?B?bllkYU9yZmphcXNhL2l6andIMUFXdVUrNmFoSHVyQURWL1lsTUE2c09yY3lh?=
 =?utf-8?Q?tZwpyEkyJGCtirJMvK6w?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXBkWWI3N1V6Y3gwQ3YyMlNrUlJHZW1YTjBxYXh6azNndXZiRlpwN21vdkw4?=
 =?utf-8?B?UjVYTkVIRGpncVNjcGJhaXF5TXdqemRnaEdQdVMvbXhnd0ZaWDRuSm1lTnRo?=
 =?utf-8?B?OFJwSkRlNXY5TjZqc0tyM0ZCZEtYZDA4N0x5TE83NHFJczU4c2VGemlZTjNp?=
 =?utf-8?B?b3FMRktSd3BuUmJNdHVReFBRL2NtNzFZc2grUXZ2d2J4NjZMMm95TEFwNWlr?=
 =?utf-8?B?cDFoNGZSZnUvL3VtdnZmYVlNVmlWRHgxaGt6VzdOSElISW5HL3d6Z29xOGhK?=
 =?utf-8?B?MHZYdDU2M0VqMVRCZjdWS0ZBOUNseXQvSXhjZlgwUHZCcVR5RFhGclFVOHNM?=
 =?utf-8?B?QS81Y09zTzV4SzR0Q2krbC94dWJraUloMDBtSlM5MlFHS3d0VUdObkFySy9L?=
 =?utf-8?B?Yyt3ZEZxa1E0ZmZnOEJYcTZEQWo1dXh6YUJtdDhUbThOYmMzRGpLbkRTbC9D?=
 =?utf-8?B?cXhMdXRaby9CUXEvV2NvdG1iTCtsMGNHb2w3VURnSGhUS1VpNlRsbnhwbXhI?=
 =?utf-8?B?dTFHdU5IRVhWcWJHd1QxczVuWUVabkZCdUpIN0d6Nzloc1lLdkloaGpFTE9l?=
 =?utf-8?B?L3liUm5hNWsxSTZzcDVTbERRblgxM042UUsrRys5UXpKQjBYcVZMSmgyZjdX?=
 =?utf-8?B?dU9hdVkvN0lOWEsvaUpTdVN5LzRRdGdjdEFHem4yc2lwVmRLVmpZVmM3TzVI?=
 =?utf-8?B?bVhNU0NzQVVyQ0h1c0RENE9lRDJVcTEwM1ZlZlgyU1RDT0FyMzJrWDRmQitB?=
 =?utf-8?B?L01JMCtlSFdmazRKWFRaK01mVlZnYlVXMUVKR3RrL2xEdWVyOFcxajVHalVC?=
 =?utf-8?B?VTFnM1ZnTUI4bm5QM2RHRjdreTdKT1d2WTdnVnh5eFFpTVF3ZlhCeTBNYm80?=
 =?utf-8?B?S1l1NEd1dWp3OEhXU0Nrb1NDMTlUQThvOHU0MjdCMllPTE0yc0VOOXJtaUM3?=
 =?utf-8?B?MzFVNDBMcm5oMXREUGthRmNaLzBNak1yTTV0bGpkOFk3ME9obzhtc1M5TlV0?=
 =?utf-8?B?REd2WTdRRWkrbWU5RG51aldNcFdjZnV2cjMwcURVc3JTNXhUTzJ5VG05bHd4?=
 =?utf-8?B?TmVsa3MvK0VIT2hIQnAwT20zUTczVUFmeVZHMm9xODZjdWxZUC9UVk1zYUQx?=
 =?utf-8?B?UjlwTHlvZ2J4MDY2ME5jZWM3TXNpMzVYZEVzLzZBSFFhU29GYUUwalY5Ui9T?=
 =?utf-8?B?Ly8ySy9kb3BDbUcyT3BrcDg0d0d5WE50eTR2NTQySllFOGRSZVprb1B4Skhz?=
 =?utf-8?B?Rmh6N3NtY0tLazk0a3JVVEc2QTdGdE5xbFZVbnF2RkIvY0RVbUEvRVNIUmlI?=
 =?utf-8?B?Um9GWTVLei9VWitFUm5HOFdwb3E1WEc3emw5Lys5c0kvaWFkb3l3Mm9IZXUy?=
 =?utf-8?B?Z2wzckhkbUY3dHMrdDJ1YWp2TVF0dDMwbGZkQUR3cHFYZG9BTUJDdHFLMnU3?=
 =?utf-8?B?NEFzdXloV3dpMnlaa1lOakxjekRIVDlOZk5vRlFad1RyVTcxT3F2cDJyNmNG?=
 =?utf-8?B?QS9EdllBOXFZQndoR2Y5V3Jya1lSZWo2cXFia0Y2RU10Vy9ZVi9hdFZ5Skpw?=
 =?utf-8?B?NC9aZGwzbG9IVnNUSzQ5clNTNW9MYnNUK1hMRUdtTzdjOFQ2ZEw2VmZJWXRa?=
 =?utf-8?B?dlo3amI5NU9KVFlIT0Zhb1VUZHRZT2l3VkNScU9xblBjUzZQdEU3Q3BRY040?=
 =?utf-8?B?cDEveGV3S0FXRnlRTkRndnJlUnc5M0VUY0JTR2RHWVJoMi9zN2tPZFNUM1lZ?=
 =?utf-8?B?Rk1CRmIyby9hYjdJVjJpQURJODZqdUkwYjV3OGpVSkRLdVRzTklvbjFFeHhw?=
 =?utf-8?B?amJvdFNJQS9wcWh3MWVnTW96S2NORzNDZ3RBcEFBUjVPSmN3TjdhSHJoc1A5?=
 =?utf-8?B?ZFdWR3ljRk5QaXVuRWRTUk5SRXp5SkxvR3FHNXNvaEtMNTZEaWM5eTFEc3JI?=
 =?utf-8?B?S2V0S3FzV3VyVTdjZTV3VE5UcHRzNTV6TmtOY2ZqLzBOanVhaTl6eVFWTVE5?=
 =?utf-8?B?cEw4Nitlek1kTmlTQ1Fnam1TZFc4czl4VXlqTVByK1huMHNDTDJia010cTA2?=
 =?utf-8?B?dXhpZUQ1UTlhNVlSa2lzTTZCa1RndnpzalNEZzhJeXRFOFFQZE8rekMxTU9P?=
 =?utf-8?B?Mk1NbGswRktFRUZTNTg1WTFTSWF2c3l0OTlyamdpYkJaM2ZkOGNIRUduRHJX?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85cb6535-9f94-4c2e-8214-08dcf4fd1b50
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 13:58:30.4153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rRYYKOK5V1HLLxoLoiMBHxYG4bTc7Tc8bebsjcRJf9XRFUN3kyM5vkhphaU0259Fd/SnB9ixgenZposPD+2kwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5175
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

Quoting Clint Taylor (2024-10-24 19:31:14-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>There is a HW issue that arises when there are race conditions
>between TCSS entering/exiting TC7 or TC10 states while the
>driver is asserting/deasserting TCSS power request. As a
>workaround, Display driver will implement a mailbox sequence
>to ensure that the TCSS is in TC0 when TCSS power request is
>asserted/deasserted.
>
>The sequence is the following
>
>1. Read mailbox command status and wait until run/busy bit is
>   clear
>2. Write mailbox data value '1' for power request asserting
>   and '0' for power request deasserting
>3. Write mailbox command run/busy bit and command value with 0x1
>4. Read mailbox command and wait until run/busy bit is clear
>   before continuing power request.
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>

I believe this patch is missing incorporation of the feedback provided
on [1] (or discussion if something I said there seems incorrect).

[1] https://patchwork.freedesktop.org/patch/620439/?series=3D140196&rev=3D1=
#comment_1130170

--
Gustavo Sousa

>---
> drivers/gpu/drm/i915/display/intel_tc.c | 40 +++++++++++++++++++++++++
> drivers/gpu/drm/i915/i915_reg.h         |  7 +++++
> 2 files changed, 47 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 6f2ee7dbc43b..7d9f87db381c 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -1013,6 +1013,39 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_p=
ort *tc, bool enabled)
>         return true;
> }
>=20
>+static bool xelpdp_tc_phy_wait_for_tcss_ready(struct drm_i915_private *i9=
15,
>+                                              bool enable)
>+{
>+        if (DISPLAY_VER(i915) < 30)
>+                return true;
>+
>+        /* check if mailbox is running busy */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        if (enable)
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
>+        else
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
>+
>+        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                       TCSS_DISP_MAILBOX_IN_CMD_DATA(1));
>+
>+        /* wait to clear mailbox running busy bit before continuing */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        return true;
>+}
>+
> static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, b=
ool enable)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>@@ -1022,6 +1055,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struc=
t intel_tc_port *tc, bool ena
>=20
>         assert_tc_cold_blocked(tc);
>=20
>+        /*
>+         * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack han=
dshake
>+         * violation when pwwreq=3D 0->1 during TC7/10 entry
>+         */
>+        drm_WARN_ON(&i915->drm,
>+                    !xelpdp_tc_phy_wait_for_tcss_ready(i915, enable));
>+
>         val =3D intel_de_read(i915, reg);
>         if (enable)
>                 val |=3D XELPDP_TCSS_POWER_REQUEST;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 8d758947f301..452325c7f427 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4539,6 +4539,13 @@ enum skl_power_gate {
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT        REG_BIT(1)
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT        REG_BIT(0)
>=20
>+#define TCSS_DISP_MAILBOX_IN_CMD                _MMIO(0x161300)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY        REG_BIT(31)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK        REG_GENMASK(7, 0)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)        TCSS_DISP_MAILBOX_IN_CM=
D_RUN_BUSY | \
>+                                                REG_FIELD_PREP(TCSS_DISP_=
MAILBOX_IN_CMD_CMD_MASK, (x))
>+#define TCSS_DISP_MAILBOX_IN_DATA                _MMIO(0x161304)
>+
> #define PRIMARY_SPI_TRIGGER                        _MMIO(0x102040)
> #define PRIMARY_SPI_ADDRESS                        _MMIO(0x102080)
> #define PRIMARY_SPI_REGIONID                        _MMIO(0x102084)
>--=20
>2.25.1
>
