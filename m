Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270CFC3EF48
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 09:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C8810E1B8;
	Fri,  7 Nov 2025 08:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZnF+KFLt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E2510E1B8
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Nov 2025 08:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762504154; x=1794040154;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LwS/RfC4ekDRavgEwJaF9kg8xrHdYm7JM4kU3+Vs4N0=;
 b=ZnF+KFLtWU7ydZ3rNjpZRkl3bqCn+yuurKnWiksDmFrLWAVuArVwkVu+
 nX7SNpEvvZp/Ikm8oDkamXUcFoZJL+zwphLlSCA1a/A3etzZp8M9BHHlO
 b4g4AwMsvWeMsmsb2bAtYFjs9+/ge3nqPHD9PdzTxSeqvGyMmpIhsTi3e
 YTKIyouhdf6aluiThDKiQpwGeX8DahAUhTMBDlI+6HM8Dcy5EFI+0nawB
 tPmYdDh3QZk1x/6lBVmzpqBvNcf4UK3M32IO3IggPDzKBXLsRR7phsgXH
 FgzQv9gRStwhj3W8RkcNfwMoSaAafI5nFB9VbgHcfgfwEDeiKyxJbDNEE Q==;
X-CSE-ConnectionGUID: RKYhqQSJRBOb6CeS0xFnfA==
X-CSE-MsgGUID: 8trWCZpQTgChEHd2uWvcxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="67264177"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="67264177"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 00:29:13 -0800
X-CSE-ConnectionGUID: leIlPek/Q529wt5ZlKAQ3Q==
X-CSE-MsgGUID: v4gR7fsgQZayrAiKk52X1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="211426840"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 00:29:14 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 00:29:13 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 00:29:13 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 00:29:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lUaJgbEO+19gxwazSbYaxeT1+6ryZGiLZfzmsbI2SMby1KczOP563UXfIjA0YLzZ2td1/OGzK/kYbVbBSDIHTi4PUcFQctJaNTKQf4lGCafsRiYclKsPQCZ8x1g11y2RZGDuc4cZT+sLtA6LSWjozpLmggAZGPCW6i0S9DlZtKXy8CNjRAZKB8K92s6tFWEXz8ALKgSfPAc+folLe6E0z5xm9kYEG+spNrzi6b7r02UD5TC+jr0Z14HUNuUqrA5qBQ+yV8zYiACTbu/UGgeEjYQaxTKtOd/hEwhz/0poriOEbuQAuR6Y6QJJ0+YrnLdIMghjky/gB9Dz3/9I/4BUZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qGi8c0+mBjVXYV8MLz6ihg+9xVu9vUV47pprPr9ewTk=;
 b=AmOJdEZy+kJ0V2815AKw2fMdLa19m1MNGAZ2hOO45VL6oaZ4kLa6rqoWo6YYSsyPhjWfmhzamw9taG4d+ovKiIi5bq44DeS1TWfbDfHIQ9mZZe9HnIVhEmRumZ3AOv3Adva02Kme9zSy0HLagn7CeSr/KxA5Y6cRAsMpsyGNqt11aCTKXvPOqpttccHvvtV6wlxN+I2oMhPgOxH+cc9/BKvwC2zo4IlIGxR55sjzD4LAtcBmAJnW5uNAq0eui02lokWAQtQ4XUc8JsenT3ORa9TQWtWC9sVQx81MS2rOZlD+KTQs9JAdlrHbyMfWZr6nioYZssqYRy8iSZefrpFYuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SN7PR11MB7068.namprd11.prod.outlook.com (2603:10b6:806:29b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.13; Fri, 7 Nov
 2025 08:29:11 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 08:29:11 +0000
Date: Fri, 7 Nov 2025 08:29:01 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v4 1/2] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Message-ID: <ja6v5tp3ugfegmitsmgv4pbwu32qxvyjln4md336wutqyyyeey@27ayc5kvjcfm>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251106120845.2821499-1-krzysztof.karas@intel.com>
 <20251106120845.2821499-2-krzysztof.karas@intel.com>
 <fe4b259fa4f34d1b98f90b9b072300e6a4ae9e18@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <fe4b259fa4f34d1b98f90b9b072300e6a4ae9e18@intel.com>
X-ClientProxiedBy: WA2P291CA0007.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SN7PR11MB7068:EE_
X-MS-Office365-Filtering-Correlation-Id: e0113007-e8cb-41a6-d9ca-08de1dd7ba12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TCtiQTA5VlQ2N2s3YzlOWHZ4NVk5ZXp0dStSclNBV2lmT0tyUjlsQU1jbUpz?=
 =?utf-8?B?a2s0em4zcTVHejlNdUEyRTZGaVZsRjZTcDlraldZUjk4OC9EYkNYaXNKY3NQ?=
 =?utf-8?B?M0J3UzU3WUxYNklDM3gvSEZBRUJOclJDLzVUNEhCZmxkSkIwdmJlUUl6YjZz?=
 =?utf-8?B?YXNHeTN0ZjVZaC91TnhJKzZTalVUYWp0Rk5rb3N5blhQZGtTSm8xYnpKS2tC?=
 =?utf-8?B?MHZGdldQY29Hcm84VS9lbXlMdmRKVUpKNFFHVGhmbmdKZGFCaUk0NUJwMVd6?=
 =?utf-8?B?WjFSQ3FKdnJVb1BUcnFJaGJYT2crYlY4RjU4Ni9jUGgvRUN6MnQvZXJBWkw0?=
 =?utf-8?B?MGRDZlltdVM4aWI2dmZ3QTYwM1ArWVhKS0FjSTZlWjJtNXk2UmZNeUhGWEp4?=
 =?utf-8?B?WHJYSUZub0Y0c2xaVHp2RVB6UmdZSWlldVdkUjcwS2pYTExuWUtmTXdDV25Z?=
 =?utf-8?B?V2ZoUFlQUFdyY2NVM1JpU3I0TGdXZWdSVzg0eWQ0UGJKOUJxNlo2TzVDVWZL?=
 =?utf-8?B?N1V1N0taUmRsbVdQUWRobitEMnRXa05mZDFOTTJyNXNNZitWL3pmWEJZU3hv?=
 =?utf-8?B?Tk95MGE5ZDUwemF2U1ZLdVA0bjZ5QlU3TUFZQ2N0K2RYaFV1N3NveTBBSlJC?=
 =?utf-8?B?WU9WL3NmdDdCYkEwemtrL2JSTnF0WXRQSHBuVW9CVUUydzZCamYzYmxVTkI2?=
 =?utf-8?B?M0NpWUJtTHhWZmhwVDRSVXJDRzJwOGNBN2QweHdycjJKWmZ0K2o5aEhodHlZ?=
 =?utf-8?B?U1BnenFsa2haeVgwbjV5bGpjNFc5dExZcjdNM0p4NTREcVZwM0hUQVF1eHdp?=
 =?utf-8?B?M3AwTDF1NDVXZG5LOGdrRDZYTlJwU0dpUzVhV0pPZGVXd282anRIS2NERjdZ?=
 =?utf-8?B?cHVtVFlRWGJ5R1NMa1F2UGFWZ1NCcTFYUHdjOG5KNXhMWFEyT3I3NFBNUEZw?=
 =?utf-8?B?SXhaWnpMVThjeEYzd3RqTUhZYVRuZHUrMURzenNJdWRzd21odzFjTEZWKzkz?=
 =?utf-8?B?RFk0OFFFejZIcitSY3A5cTJTSXVHR3hzTnNBM0lRVG16Rlg3TGdHeHFKYVh0?=
 =?utf-8?B?eEQyaXd2WGV1VXUzWDNqZFFlaHlSdnNVd3g1YnFaYUF0L2JxS0phQzBNZUd5?=
 =?utf-8?B?bHpVMFJLTXlONWhIamJuaUhFOW11TGRDR1RGemFqYnQ3UXZDMzRZYncxL1hZ?=
 =?utf-8?B?YStTZFNEc05lcUR3SjNEanZEVE9Za3B3Wk92NzVndEx0SmtDNytsWHkwdDg0?=
 =?utf-8?B?cnZJcmp6cUJCRkhTQjh1TDFpZTRiakwwaDh5TEpKNkdqdnBEemR2d2JFaENU?=
 =?utf-8?B?N200T1pzUis1N3lIS3NvYy9NRm1ncXl6OGJ5MHRPVUE5Wmp5WlQ1d2VQREY5?=
 =?utf-8?B?MlJUYWYvZmFmeVVZUnRRYnVrSFB5YlNiTzlRWHlaaVI1UGxRa1lqcnFYUnJV?=
 =?utf-8?B?NW94TGV4eWVzK0pWck1NbHpNZFozYVBRL1hzeTI5STU0bURRcE5BcllSYmc2?=
 =?utf-8?B?dC8yN3ZCTFhvMnhUU1JXWmN1R2N2RmNOMm5rTkRGSEFrWkFBMVlURGRpTmFl?=
 =?utf-8?B?Mzk1UDdyaVNmYS9OQU5FZUo5K0NSL3dVRjlBdmI0WG9JMnpmYWtnTGM3Nndp?=
 =?utf-8?B?WTNQMXhMemowdUtwakc4clFOeVMzYytOcHA0NmhrTVJaVldyQXYyRWdtampE?=
 =?utf-8?B?M3llV2JDcVBqVzlpd2liN01mYzYzU1ZOem5sVExZS0poNUxsRkM2MlcxanZv?=
 =?utf-8?B?VFFDTitSSGtDRFV5SndWQThnU1Yyd3hTa3Z6dVJXZ2V3cDFsOE9NenJVdWo5?=
 =?utf-8?B?QmhyY3graGFYQTNtUGRreDVLWER1a1hDT3NhUzR2bmZXVFNOamplek44L01R?=
 =?utf-8?B?Ulg4Rkt6bTJNaFpMSHJDT2FpekxSRklrQWVScFBoV0tVMTErT0lYajMraGdi?=
 =?utf-8?Q?w6avGciifFcZPZzdj0IlCiaUUfFrjVz3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3dzUGhoRHkwVWRQeHhRNFdMenV1aTRuTGJUWGk3cFRLdXVXS2hDaDU0QXg2?=
 =?utf-8?B?VzlLT3ltQWl0MFF4RGtFZ2M5MWFFRTJPTWR4WDVySmRBM2tFcUxHNkxKb0wx?=
 =?utf-8?B?M0NKZm92VVErbmsyVVpqazlLNm8vdnh5K1l4WkxMeWlXMExtREhYK0tWWFgx?=
 =?utf-8?B?S01HalI3OHRvRXlzKzhvSExvQVp2R2w4cWVhd08weVlnSTMzV054OE14Tkkr?=
 =?utf-8?B?Z2JqM2dwSkd4K1Y0SHgzVytQL21QMVdDbHN3SmhJSG1hY3YySWRBcVo3RkJM?=
 =?utf-8?B?Y28wOEpucndzR2VRZzhhUHA1Q3dDQ0pmVm1WQ3l4aFRmYmFhSngyUnAyUG9j?=
 =?utf-8?B?ZUMwOUNremgrSElDbmxyalYxWkthQnFkaUFvY3NER1liNmxEcnhIM3hyUU9T?=
 =?utf-8?B?YmNDYzRmQXNvaDRRK1BoeG5VWUVibTJGRkpiNmxqWlluMWp0VW5nR3dVTjVz?=
 =?utf-8?B?QVluOFU5cVlIREV2VGhxeWpOaGdBaFFBVDVZdVRSb1l3NUdtYmRuVndSZzFk?=
 =?utf-8?B?WVpnSlVoQ2lGalB1bHJxQ0JpMzBNRUx6YUpRWmxNSnhGTVFVR1F3b21iSVBv?=
 =?utf-8?B?T1RPQlFOOThwYlo2MmFFbWFnU1d2MXgxdk0vWEFxbnJNV0NsRUNTbm83WjRa?=
 =?utf-8?B?a1lTMHZZZ0JTaXE5d3RUL3I1bzZTR1VneTh6NkZtQnE1SU5xTGxyQ3VKYmlG?=
 =?utf-8?B?UmFwOWR2MFV5RXhTempMZFdyZ0hsaUFvOEJmNnMrNStZdE93SHlEODBNVXpk?=
 =?utf-8?B?OEh6K3dGb2VsNTdZV045N2tyVzhzUnllZXllSXZ5dmlzMWh1WGNsY1dYN1ZR?=
 =?utf-8?B?Y3NqNnY4elh5V1ZTU0ZFQnJNUEJhem1XdEwwS280L24vQ2kxMVFKaFVjNzRv?=
 =?utf-8?B?WU91Mmx4QlBxZE5hQ0RyZXl3RHgzSEZxdWtLQVdRblFRck1mWmtFZnhWMFRR?=
 =?utf-8?B?WW5lWW1sN3hrUTlnSTFDUlloLzRTTmJLSUt4UEdlYkFRSG9EaWRUVk1mWld4?=
 =?utf-8?B?K3VxMlRFUkxJMGtRL3loR1FlTTZnblBFc1Y4Q1dkdzhRV2JnNEhHSm9HbGE4?=
 =?utf-8?B?bzdVejBHckQ4SGIzdkZkUzNIcTZsR2hUMmQyZHYwczNGdkNzZnd6REEweUtR?=
 =?utf-8?B?VU9NTHNUSXd3N1dudGttQ2RCTjA2WnFpczRZdk9VZlZLczBsVlczcWJlYmFJ?=
 =?utf-8?B?R1h5RG9KcDhHV0crQjdKekN5WVJ2bXM0WHg2K0pHZzA2ZmQxZTV4ck1TU1ds?=
 =?utf-8?B?VkViRnl3NlpFdWxhcGZVdEtDWXBMcTdhWHJSWi9ubTJlRnNSaDR0bW5heUZY?=
 =?utf-8?B?eUVjQ0NSVU9xTy9DNm9CUWMyWndVQTA4ajkyTks3WGRkbmZnSHhMZFViWTIx?=
 =?utf-8?B?RjZJd3hSWjRKS29DU1hrd1NIOU5xUWVtTXVrdkJkekZRaGltU1F6UERoeGg2?=
 =?utf-8?B?TVZ5U2NubU9tYzFNTXNjQWloMzJxd1Yxcnpra1dHcG1iaEJCQjk3OEVaQzAy?=
 =?utf-8?B?cXlHUWJPZFA0YUJVblBuNlR2MjIzZEczRTdab0NwdUQ0Y3hNNzA2eUpWMFVM?=
 =?utf-8?B?cFdTVm9ub2RBQWJTbkowWW94dFpkRTNjM0V4TWkrZ1ZISkkvZ0kzZEhDaXNS?=
 =?utf-8?B?NzR4ODZDRFdKRyt5TXR2byt0cnVWdFU4S0lyRGRRbGxML1JnTFhEUDgzRDZS?=
 =?utf-8?B?WWdIaE9uNzJod0RDOWlzci80OENGNVQ2WkhEZmluT29QNEtSUkQwUm9lTUpa?=
 =?utf-8?B?R21PUWFuUzJMaGdrYWxrbE1MTURLNHFjTTFaQWdmVGJ3aU5UL2Y5cFo3Z3Y2?=
 =?utf-8?B?Z1JhcCt6b09leFJETG5QZ2NCcG8vMXcra2hsWWxQblROb09IZnp5dGhwaHpI?=
 =?utf-8?B?VzEyL1BudWRONzJvZ1FReTFQdFZQcm5XSzBJamRWalhPZWwvaE1pbWRON2ta?=
 =?utf-8?B?bTJJbmh3N2N1RkdUdHAxZjhsL2JvZmR0aXFOWXQ4ckpua1cwd1lmdlBPT1Z6?=
 =?utf-8?B?TlpCK0xHVndlSndrL1ZRaFNhbGZ2OEFVVGFZVUtDYmltdEUvUHlnUjFwMHk4?=
 =?utf-8?B?dEJrdlJ5ekhRZDFmQUY3YVVsdFlkQ3QyckZrQ1J1RVFIaFlYbDVSUHNVbHlE?=
 =?utf-8?B?TE8wK3hWcUxUUHBjcHRJdnA3N25iQTJFcFZ3aXE5L3B2aHFUU09ZNWJFM2dE?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0113007-e8cb-41a6-d9ca-08de1dd7ba12
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 08:29:11.1593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lxu3uAPPlKrNCWPFhcpfIUoImUiw309WyeAuONqOA0hYbXvZF3LPNptc8eW6kEjeSNwiCMCStRAowqYLn9G8nqwUNVapNGKYEalk1zgxYUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7068
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

Hi Jani,

> On Thu, 06 Nov 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> > There are two unsafe scenarios in that function:
> >  1) drm_format_info_block_width/height() may return 0 and cause
> > division by 0 down the line. Warn early if any of these values
> > are 0.
> >  2) dma_addr calculations are carried out using 32-bit
> > arithmetic, which could cause a truncation of the values
> > before they are extended to 64 bits. Cast one of the operands
> > to dma_addr_t, so 64-bit arithmetic is used.
> 
> Lists like this are an indication it should be multiple patches. The
> only thing in common here is the function.
Hmm, sure, I'll split this change.

> 
> >
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > ---
> >
> > v4:
> > * use WARN_ON_ONCE() instead of returning early (Andi)
> 
> I don't get it. Why are we allowing the oops if we check it?
There is already an early return in this function due to missing
DMA GEM object, which looks like error path, so I proposed
"return 0" in v3. Andi suggested using WARN or BUG macro
here, to which you responded "Never BUG* though.".
Do we have any good alternatives to handle this?

[...]

-- 
Best Regards,
Krzysztof
