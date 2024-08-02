Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F46E945DA8
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2024 14:09:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA9E10E0AA;
	Fri,  2 Aug 2024 12:08:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n6gd39Y6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F49310E09B;
 Fri,  2 Aug 2024 12:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722600537; x=1754136537;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=3ZYYxgFUoFhYB1RmATxzzsmrjTmLQA9CdccgWEnEbEc=;
 b=n6gd39Y6R0Zn41N3sneVlmFCcI3O9/OB/Wyp9LlcvGwnP47daBT8EeCH
 u54kRCAjS3jAt4O2AscqMdpLaolnFHvH2jm8VMsiL76eJ3PsGQQ2XvLwn
 W0iTX6OEvBpk2hDvnE6++pChLIFC23GuXFwc6Sjg1gtB/7t1A/Dc7hJ4b
 9OC52cGbQBB4srX6pJfsc6TvyWWuEMRlLqbv0mZuSX8bVDuuAOFDrY7YB
 39YRGBGxn7F6222BvbgNgp2XgyzF9O6KWb1jFwwRwA/Fzo0PqFOtrRKXF
 kwOr0v532VdEfmkWj6QnNAZfRmL+xN0qsI13Bk74CqM21RJKetRKQDRZJ g==;
X-CSE-ConnectionGUID: ehpLmpwIR2eVmtSBnMGEAg==
X-CSE-MsgGUID: hNlu3FGxSpyfGqJgyLl+5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="24483711"
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="24483711"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2024 05:08:27 -0700
X-CSE-ConnectionGUID: MLOChSxZRl62ZGuRbjGh9Q==
X-CSE-MsgGUID: w7YVGZTyR0C/gRYzgBhU7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="55319952"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Aug 2024 05:08:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 2 Aug 2024 05:08:28 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 2 Aug 2024 05:08:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 2 Aug 2024 05:08:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 2 Aug 2024 05:08:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a7BLRNvgTuCBJjVV/RDaT4glAx/cygkoT+L8iyDa71DzyJvJuJD8O2QDbpryTvbSDj24tXSik8Q672vsH+swI4yvYZ+bASLD8MbB6aASLo/h0FQKhfRnzzScmwD3v/8KF59I4ssa6xGVOuZ7sY4Ebos/GE78o8ZHp2l8yFY82wmq9UCauQiLxTb581OMMEc+wccQ6e+nNaRzt3BBadlfURxExEC8PIjYwVM4kRxly1V9Kf6/a9hWVXQygsJfhxZQ0dSWa9GfmdqJRyEkBAgcS0mEWtHmXnO6raEbVDXCrCM3JdMxAm+OGpnslJXKcbWyxmJFBCwZLLMAhOLV/P8QTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gxwlGZkWw1qysUPvkCTIlH0jb5Z/iurPwnd08sxVrQI=;
 b=mFCm2iq54zYjXF/pZlLo3/Ooh7TxXLhXpJMfWerwUOgVV8xaJMF6W/hhwiPzsIMi/ldZe7QI8iMsZLFyzRtvJMxIAFGaiIrJ8I33NlqpcIfcrnJs3ScBrArJTeHzawon4ks10+kglmCRLS2SjkER8hoxG0RzTP/6dYU0AWzx3wrWS0XF7oL0fQcWP0NdQqmfNqCtFG7V9D72GG0IQ4xmgcCkM20ryqQypV4DSKP82ftI2hu/rRFtSh1QQpQCkaivLKazEebgXy9oiGzc9pZJ58uU+ahqFJLIo7PKWgd48b8zfj9Z2IEimhV4y4Ceke+gD9Fh2cgV6/eP5PpW6GAjVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB7689.namprd11.prod.outlook.com (2603:10b6:8:e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Fri, 2 Aug
 2024 12:08:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Fri, 2 Aug 2024
 12:08:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8734nn72xs.fsf@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <c479244bb25e915c6467f76e48a3260455454dd9.1722263308.git.jani.nikula@intel.com>
 <172253392110.5121.3280125155104128634@gjsousa-mobl2>
 <8734nn72xs.fsf@intel.com>
Subject: Re: [PATCH 05/10] drm/i915 & drm/xe: save struct drm_device to drvdata
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 2 Aug 2024 09:08:17 -0300
Message-ID: <172260049737.4372.3779542410832797078@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW3PR05CA0008.namprd05.prod.outlook.com
 (2603:10b6:303:2b::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB7689:EE_
X-MS-Office365-Filtering-Correlation-Id: 38a96f6a-5178-4d72-f7eb-08dcb2ebce90
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnNUK3psMHBBYkdnSkp0SVVzNTRRYlY0elk3VHBpWkJUemlma3FYR3h1Q2xS?=
 =?utf-8?B?bmF5UzU0eVFCNWRtYlAra3g4T2h3a3BtYUQrcGF3SXNkYmpDZ0plZEZML3F4?=
 =?utf-8?B?ai8wOWhCclZzT1NOOXRBRVY4ZlF4M0ZNdElEQjF0elEvRi9hTUQwMHFGL1Ji?=
 =?utf-8?B?NURGckpEMmhDcms0TmcrOUlPbDJCNkFMTmhGcGROOHJWeDlwUXdNbTRrL2U3?=
 =?utf-8?B?UlREMEx6eC9MVEJsMm5tNDZiV2pEdDA3UFNlcUhxWUFTVDhTcDNNR1dYMy9U?=
 =?utf-8?B?V2g3RzhNb0w4NnFlcWF5QUI1eStzRzVWbEFBWjhQc1Uwc0VSRUltaWdkbE5W?=
 =?utf-8?B?b3BlQVlpU2ZMZTNnb0pnOVhqMXlpNXFYVTVMSTV6aFk0bzZYQXBpenpPdFdD?=
 =?utf-8?B?ZGpSSXJUanlqckpqTDl6UXQrTGFqbXJISVh0NFVHNjN2RXo5Y1Q3YURMa3Qv?=
 =?utf-8?B?am5USTJZQWtIdDFpZjhhakdSWnpZYzVnRjgxakd5VERGaXdNZG8xZHNtL0R2?=
 =?utf-8?B?UjR1RW02Qmg4bWtLczBuaGVGTXF5RktXdmxiN0lFTzdScmxFNVVLNk5FOERX?=
 =?utf-8?B?RkZOcjZPNlJmM3lmODdzdmJiaUZJeGRaOExxOWIvR21yMXFRNnlpR3pNVmo2?=
 =?utf-8?B?cEUxT09KMHNGdTlVYlF2bUV4ekpKczYyMm1nWmxlcThqbnlvZTBKaVNHZmIv?=
 =?utf-8?B?eXZzWjNUbGZIQkxPM0tPRTdaVVhFL1kxVWJGYXJ4TGV2MTAyYlhZWFRjWjc1?=
 =?utf-8?B?SU83UjB3RUJHeEhzZE1OQUR4V3c1ZmpqS2NyUmFBUForZUtrVjk1ZUtna2Ji?=
 =?utf-8?B?WE9yY2JQQndZRk9MQzhVRDF4U2NLZ2xhWW5MejMvNWxwcjAvSUhYeWxNTmhr?=
 =?utf-8?B?S0tRTUN2ZWREU0RHRjRTK0swVitmemdCQjNyNkN2c2liWXNWSi8yc0F6N09p?=
 =?utf-8?B?bkc0WlBBRlBDNmpNd29xcWx1R29JQW02MGRIbHZkMi9RVjJOY3FWSUN3clc4?=
 =?utf-8?B?WlFla01VUDJqN1BubWRnNmgzOVRsV0pVa2x4Zk5DZzIvc0d0OXdKZk9nTlJD?=
 =?utf-8?B?V25lckhEVTlZQjBWZ0ZrQnFVN1NSSDVzUk9xRktDdDVPZWJVM3E5Ulh0ZlhB?=
 =?utf-8?B?bVp4RjREbGtvejNCb0Jkb3A5Umh1cGxNS1B3NWJtYU94aGFzYW1MUnkrclFp?=
 =?utf-8?B?czJtK0dpSXlWVUcxL0NSa3FmN0xCR0pDRVRJVXRvUjkzVUtMVDcrblNFYXlv?=
 =?utf-8?B?cGZsdnlBZHV0NlRNNXBFT2pmQmpSUnBacFc5Z1lmQmFuUGlNZkh0c3hKVTc0?=
 =?utf-8?B?LzdHSUVNMWZ4RjkwUVRFOVlhMStmSHdUQ0R6b2JjZTROMFlBMDBiUEJ4anZZ?=
 =?utf-8?B?YmpQNkZpTzF1R2pBQXAva3ExcVJlNWpYVzZhSGJTcDFNNU8xemN1SERZSHBZ?=
 =?utf-8?B?WFV5Vk5sZG5tOURpUWVOV0FFc3M1MFJaeG9zQk9zeVkvbldYbDlGM1YwblEy?=
 =?utf-8?B?Z1RzM1hLRjAwU1MvQlhFeEd2MTluMnVGT3B2NG9la3Nsa1hhSXBaWitMd0ZJ?=
 =?utf-8?B?OUZnMGdHd3RDZ3dyOExLTTBnZkt5eEp6cWtvWW5yVGdpRlhCTnBjVWdGZy9w?=
 =?utf-8?B?VGI1dFVSQWNFcndSUm5LTy9ZU0RGQ3ROa0NqNUE3Q3g0MHZnT3BVMGtXYUNQ?=
 =?utf-8?B?OEozQzlneUZLN1RpemdvQUt2QWtzZTdqY0hGOS84YU14MnFtVWV0L0hjSEpj?=
 =?utf-8?B?ZVpkYUx1dG40dDU0bzllT3V4V082NFZTMXN4VUh6QXN5V0VkM3FEamsrNllV?=
 =?utf-8?B?S3N4U25RVlc3Qk1GNXFPUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K21vQ3h6SnlnVmMwdjcyQ092OGROYURmMTRxVko0N3Q3enJ4eW1GVGl1WlQv?=
 =?utf-8?B?cUMyQzdYSTJmRGNQRFpOWStNUkpndkJBaDhNNnptZDVnOU0xWXNLRmxQMTAr?=
 =?utf-8?B?OWpUeXk5ZFNGU3IvZ0JjYjk3S2VQZnZEYmI4U0RROWdhdHpoQWFWTEZtN0Mr?=
 =?utf-8?B?blVpUW9wbmpIK2psVVBIaEMwMzlFRnN2QVlkVGdOd1BrYUIxRFFacEQxWWth?=
 =?utf-8?B?VWxneHI1VTIwS1pzaFYrMjlnRElwTDYxTjA0T3RuRDZlRW1jSjIzZU53Qlpt?=
 =?utf-8?B?U2FoREdHUUNYcVZqd2I5UmtrQzV0WFFySnh5eW5NMmZsazRGMnZHUE5ySkU0?=
 =?utf-8?B?clZtUmI2ZmxhVVJOUC9pVDNJRVAwRVRoK3RjTThXMFNKZ01ZcG43L0tiNVBv?=
 =?utf-8?B?MUtLanBNSzJMUVBGMy9RckJUUG44NWE2WThLTTRuY3BsY0Y1enlyU2JMc05I?=
 =?utf-8?B?eUVieHI3WWlWK1psclo3dDdjMm5IQUtsdXJPZ0x5TmN2MTJndENpdTRmTktG?=
 =?utf-8?B?amZqMXVLS1VRb2FsbldpbkdXN3pLbTBsSzJDNkRyRDhLR2pPME5JWktqVWxR?=
 =?utf-8?B?RWxPTzRDQ3hKZlp0QjV4QmkxZmYvRFdqdGIxT0VGaXlFRVR4SEFNQ0lxMTA1?=
 =?utf-8?B?azZpem5NRkU0UUdPM1JXZVJFT0hNazcwSDVHUFJxVGxGYUVpaU9NZTFDTXA5?=
 =?utf-8?B?QTZ6VFRjSkRnQlBEeUlJNGdUaTdsQkhxdkJNQytJZlpZYmZQcy9CQ09UY2xv?=
 =?utf-8?B?Zi9RcnNDakJIa0pGaUJHUTQrY3p6SjRCc1dIVnNySEZJTTJ2QS9TQmdUQU53?=
 =?utf-8?B?KytTYnpBdnR6Slp3aUR5cStKamNhOTBLRzJPdzRXUXYwSlY1Y0YyMUlTMEQz?=
 =?utf-8?B?Sm8zZDNRVGJnNlZmZmg1Q2RVdGkwNzgwK0RRT1RJYzJIUEdYN0ZQbmowMDMv?=
 =?utf-8?B?R3ZTbm1PaFdtdURtL25adEdibWtCT055dGwrd1VkdUFnTU1Nbkhua3hzMjNp?=
 =?utf-8?B?V1NwV00reVkxd1BxZlEwYkJ6UHd3QUJwQllJMnNnWS9IOFZmNW1Eb0lWOHNK?=
 =?utf-8?B?OWp3MWlSSmMwNmJEdXNQbTFIMmlnL0UyMXJnYW0rMjR1cmQ3T3ZNbndLMkds?=
 =?utf-8?B?WEtGRHhqVnkrMWVUVjh3WGpUSGpwTGRhR0lHajFpcGpOemJWQzhoUE9QbjJh?=
 =?utf-8?B?MXNUKzBxUDd0U2N3L0xGWnYwYjlJengybXhpNkdFMjdUbzhoOEQvTzJrTDJn?=
 =?utf-8?B?NTY5eHcyaTJqaUNLc1dkeEpDMnRXTk14OFVCaUE5OU43cGZkV2RUUUxPQmpv?=
 =?utf-8?B?Ky80YzdjTFY1WWhpVWo1Y3VxbzVhdjJydCtRdFgrNTFKa1AyelhQWk92T212?=
 =?utf-8?B?S2QyTFFFZXlPRWRjRTRNMnV5dGNOb0FRcjV0dWZBMUlhQTlZS1dMMk9ZWXBL?=
 =?utf-8?B?QXpocVE2c2VwdE5GdzFYa2JRZ1pYREk5U3p0M2JrNURsSUFRbktlYVU2dDB0?=
 =?utf-8?B?WFo5U0RRYU1IeXpZQm96aVlLdXVPRDVsNVRmWXdMN05LM2JYckVreFhZejNj?=
 =?utf-8?B?dlQ1QUhOclBIK0dyUWhEYmxidnZRd21ueEVNZ2lKOWhzMEdHVG9BVDVUQjU1?=
 =?utf-8?B?VWk1WWNJbXY5d1ZZZ0cvVkJHb1NhNFRXNUJ2MlJlZW81ckc4S3pLOVdtOGFy?=
 =?utf-8?B?cjc5TE4reVppT1BRYzNWbWgydml6S0xhak9DakpzblpvUGE2WE50VzRCMjVl?=
 =?utf-8?B?ck12YlRXV01QNWl5NzA4ZXYzY1BlSFFhWTJtOERGeXh2VTNNRUdPN0ZnVDRK?=
 =?utf-8?B?cXJ3Tm94ZjRBajk0RENuZ1BSL2FtWFEwR3dmZkR3bVVWVGpTNTNIODlGSk9s?=
 =?utf-8?B?SHNRVWtJWHFHZVNrcDVTY2sxYnRrYWRTUzd5NU5hY3VoUFBpVFZlWG13WVRv?=
 =?utf-8?B?ZmU3TVFQUFZIVDlJdlVESGQxMUJEM0JLeFVoQnY1L04wV1ZrdXdMZkRRQjFQ?=
 =?utf-8?B?TUtaeXBjQTZqMHRqNGdPdWtqcjU3b1ZLWUJPNnhSbHlLc2lsNDJOYWpQSHFN?=
 =?utf-8?B?ZlMyc252K1dTdGRDY3c3NGNPUmhwWUtnRFR6TVliM0tnVUx3cjJMUmx1ZDFh?=
 =?utf-8?B?K05oWmoyc3pHVU55Wm1MeEhkNlNQM3Azdi9qQlFhQ3FsTVl3MVhyb2Z3OHoy?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38a96f6a-5178-4d72-f7eb-08dcb2ebce90
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2024 12:08:23.4458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iK1eYv7MmXS6nRswxy36TQuzqMrLngM9PO/br1el/t4bgLYLEdmp+joJFs+6drVmWTd89efUzybdkjwjAP6q4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7689
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

Quoting Jani Nikula (2024-08-02 05:18:39-03:00)
>On Thu, 01 Aug 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2024-07-29 11:30:06-03:00)
>>>In the future, the display code shall not have any idea about struct
>>>xe_device or struct drm_i915_private, but will need to get at the struct
>>>drm_device via drvdata. Store the struct drm_device pointer to drvdata
>>>instead of the driver specific pointer.
>>>
>>>Even though struct drm_device is embedded in both struct xe_device and
>>>struct drm_i915_private at offset 0, take care to check for NULL before
>>>using container_of() to allow for other offsets.
>>
>> I think the second half of this paragraph could be rephrased. One might
>> think that the text is suggesting that checking for NULL has something
>> to do with allowing other offsets.
>>
>> I would jump directly to mention using container_of() and would assume
>> that it is implied that NULL check is necessary before using it. :-)
>
>But I *am* suggesting the NULL check before container_of() has
>everything to do with allowing other offsets!
>
>container_of() will return a NULL pointer for a NULL pointer when the
>offset is 0, but will return a negative garbage pointer otherwise.

Okay, I think I got a better understanding of what you mean.

That said, the following makes more sense *to me*:

- The use of container_of() is what actually allows the use of non-zero
  offsets.

- container_of() shouldn't be used with NULL pointers, it just doesn't
  make sense. So, if we receive a NULL pointer, don't bother using
  container_of() and simply return NULL.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>
>>
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/i915_driver.c                | 2 +-
>>> drivers/gpu/drm/i915/i915_drv.h                   | 8 ++++++--
>>> drivers/gpu/drm/i915/selftests/mock_gem_device.c  | 2 +-
>>> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 4 +++-
>>> drivers/gpu/drm/xe/xe_device.h                    | 8 ++++++--
>>> drivers/gpu/drm/xe/xe_pci.c                       | 2 +-
>>> 6 files changed, 18 insertions(+), 8 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>>>index fb8e9c2fcea5..176c13c2e191 100644
>>>--- a/drivers/gpu/drm/i915/i915_driver.c
>>>+++ b/drivers/gpu/drm/i915/i915_driver.c
>>>@@ -723,7 +723,7 @@ i915_driver_create(struct pci_dev *pdev, const struc=
t pci_device_id *ent)
>>>         if (IS_ERR(i915))
>>>                 return i915;
>>>=20
>>>-        pci_set_drvdata(pdev, i915);
>>>+        pci_set_drvdata(pdev, &i915->drm);
>>>=20
>>>         /* Device parameters start as a copy of module parameters. */
>>>         i915_params_copy(&i915->params, &i915_modparams);
>>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>>>index d7723dd11c80..f6edaef73db5 100644
>>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>>@@ -365,12 +365,16 @@ static inline struct drm_i915_private *to_i915(con=
st struct drm_device *dev)
>>>=20
>>> static inline struct drm_i915_private *kdev_to_i915(struct device *kdev=
)
>>> {
>>>-        return dev_get_drvdata(kdev);
>>>+        struct drm_device *drm =3D dev_get_drvdata(kdev);
>>>+
>>>+        return drm ? to_i915(drm) : NULL;
>>> }
>>>=20
>>> static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pde=
v)
>>> {
>>>-        return pci_get_drvdata(pdev);
>>>+        struct drm_device *drm =3D pci_get_drvdata(pdev);
>>>+
>>>+        return drm ? to_i915(drm) : NULL;
>>> }
>>>=20
>>> static inline struct intel_gt *to_gt(const struct drm_i915_private *i91=
5)
>>>diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/=
gpu/drm/i915/selftests/mock_gem_device.c
>>>index 0bd29846873b..91794ca17a58 100644
>>>--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>>>+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>>>@@ -172,7 +172,7 @@ struct drm_i915_private *mock_gem_device(void)
>>>                 return NULL;
>>>         }
>>>=20
>>>-        pci_set_drvdata(pdev, i915);
>>>+        pci_set_drvdata(pdev, &i915->drm);
>>>=20
>>>         /* Device parameters start as a copy of module parameters. */
>>>         i915_params_copy(&i915->params, &i915_modparams);
>>>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers=
/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>>index 2feedddf1e40..766fba88a3c8 100644
>>>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>>@@ -23,7 +23,9 @@ static inline struct drm_i915_private *to_i915(const s=
truct drm_device *dev)
>>>=20
>>> static inline struct drm_i915_private *kdev_to_i915(struct device *kdev=
)
>>> {
>>>-        return dev_get_drvdata(kdev);
>>>+        struct drm_device *drm =3D dev_get_drvdata(kdev);
>>>+
>>>+        return drm ? to_i915(drm) : NULL;
>>> }
>>>=20
>>> #define IS_PLATFORM(xe, x) ((xe)->info.platform =3D=3D x)
>>>diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_devi=
ce.h
>>>index 2c96f1b2aafd..022876eebfd5 100644
>>>--- a/drivers/gpu/drm/xe/xe_device.h
>>>+++ b/drivers/gpu/drm/xe/xe_device.h
>>>@@ -17,12 +17,16 @@ static inline struct xe_device *to_xe_device(const s=
truct drm_device *dev)
>>>=20
>>> static inline struct xe_device *kdev_to_xe_device(struct device *kdev)
>>> {
>>>-        return dev_get_drvdata(kdev);
>>>+        struct drm_device *drm =3D dev_get_drvdata(kdev);
>>>+
>>>+        return drm ? to_xe_device(drm) : NULL;
>>> }
>>>=20
>>> static inline struct xe_device *pdev_to_xe_device(struct pci_dev *pdev)
>>> {
>>>-        return pci_get_drvdata(pdev);
>>>+        struct drm_device *drm =3D pci_get_drvdata(pdev);
>>>+
>>>+        return drm ? to_xe_device(drm) : NULL;
>>> }
>>>=20
>>> static inline struct xe_device *xe_device_const_cast(const struct xe_de=
vice *xe)
>>>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>>>index 7bb811b4a057..f861b8cf931a 100644
>>>--- a/drivers/gpu/drm/xe/xe_pci.c
>>>+++ b/drivers/gpu/drm/xe/xe_pci.c
>>>@@ -800,7 +800,7 @@ static int xe_pci_probe(struct pci_dev *pdev, const =
struct pci_device_id *ent)
>>>         if (IS_ERR(xe))
>>>                 return PTR_ERR(xe);
>>>=20
>>>-        pci_set_drvdata(pdev, xe);
>>>+        pci_set_drvdata(pdev, &xe->drm);
>>>=20
>>>         xe_pm_assert_unbounded_bridge(xe);
>>>         subplatform_desc =3D find_subplatform(xe, desc);
>>>--=20
>>>2.39.2
>>>
>
>--=20
>Jani Nikula, Intel
