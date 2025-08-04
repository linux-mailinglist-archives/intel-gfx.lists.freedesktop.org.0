Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9279AB19FD8
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 12:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069F210E0C1;
	Mon,  4 Aug 2025 10:42:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Omya2ZFf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E624D10E0C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 10:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754304127; x=1785840127;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=jjvqlu1S8YLW14JWgwrHhI6L9xN6jPSV0DX+MZoRD0k=;
 b=Omya2ZFfikdLQwasLSCV5OBOeUghII3Vbfi0Gt1ErC/mGW6G4ImT2Onz
 qThpI6qIrLYHrcIuhb/aPJ+s2epZxv+xDCNB3ojPcMKE6+HsbTV8MKP9a
 tPFFFJFHxjfLtGvF3K7GCPqsXC8daWcD+ctt9ZPfnEGuzjkbJ5ypbvtLx
 RNJA5Oj/ZC9Rlsx7Ug0v9+zkIvsR1ZiutYy4LbZjLuOo0SIB+pwJTCYQI
 dl43oTgRpRLjT/b005sjEqIb0w95zV8vNpTIz9YVfjeXDh7Fzt8p7nCr3
 jby869b5Ct9huaBlmxtA4k6DrS6P55tOSctX046Q0rCYsiKpN8XW8vRhH w==;
X-CSE-ConnectionGUID: TyTDQr9cRnWHy90uhtkhpQ==
X-CSE-MsgGUID: LC68U7niRTulAmaWHRDpOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="74149347"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="74149347"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 03:42:07 -0700
X-CSE-ConnectionGUID: HqcvfYUzRGKIymN2fJhyGA==
X-CSE-MsgGUID: wddKZX9gTjmRTjl0wUokPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164919409"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 03:42:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 03:42:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 03:42:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.82) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 4 Aug 2025 03:42:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CbdQdecYUcYeE+PM84ONMXRUxsgsUAE18yupX3W0IKniY6bLJcmZ20yoa3R6hX4sUgbJe9M6OXlrFsfgMIpng/pQMp+jiynAlFA5TKlE4OyIKdC064ErXT4pNsFnEDmDsILkKT8sGw3eN1BLBjpY64TFSCbU+iCfANue9Wgs0zULrT1v+SXIKTrZN+xMeMBpyqSEsMyDH+ERE7f6w906vwermVAyEON1EhU96Nsuarc/hscW7HHdwfppyt801vhWgC/HpYqL7jgSZZTQngU6n6jP1gWRc4WUABrGjSSiudlgP2dK8JOcKvF2oSnjsjioJn/w6sXYomjVxgrM+5+s/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xtN6GBq0pQOg65oVVBofn7nxmPWyf95Hnr3anD4XFEw=;
 b=uCyc79w9ajro5JQY+FhCV+j/71REvoa6A5Js3D8a5JwJyzZmiFoxfUMbjgcX/7sFfzHwtq3mOWzzOrr+FKp9dOLl+D5t3V1HToilUg9KxvM/gTpriF8iRdpn5RiZ5Bo5f3fZ8/4KaFX6Q1ynxdhL8cxGmJsxDQB1oTnrsrf/9TiaaKlUevTl3XZ/rREGJFKFh7TuEdrlPYn7HHDHz740JpPUGcS1yBeY/2Ap3VXEHJHRd9f302ReYDhQaN8OGURXvyNTIh7yBG2NAIPA5avJMRbWnCzrZ+64Q6Zx8JP3UofxyJX8v/4aESncgXUaXBJTztS8ZsDIKqQ+lIQoTljR9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.17; Mon, 4 Aug
 2025 10:42:04 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8989.010; Mon, 4 Aug 2025
 10:42:04 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 4 Aug 2025 10:42:00 +0000
Message-ID: <DBTKWR04WX0F.1ZITPJXC9FXF3@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gt: Protect against overflow in active_engine()
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
In-Reply-To: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
X-ClientProxiedBy: WA1P291CA0006.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::14) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ0PR11MB4896:EE_
X-MS-Office365-Filtering-Correlation-Id: 96b634ce-32e5-442d-d652-08ddd3438d27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHByUnVxaUJ3NDQweDNPbnN0L3RySUxCZHlaTWFQK1ZyUWU1TmVrYndrWHVx?=
 =?utf-8?B?WXVNbXpQYmdJQkdMcjFITFM2VitYU0NieXE2V2ZoZU5DS3FSenl0RzNzYW9j?=
 =?utf-8?B?cmkzSmJQbElSVVNCclJUeExzd0tFSlk3dFV1UndsRjZCQlpXYUNWSEZSTytV?=
 =?utf-8?B?ZTZGVnI0UzlKdURXS0tXbWZKbGRFajBES2tsWjcrbGp2QzRWaVc0QVpaWWY5?=
 =?utf-8?B?aDdXOUVacGlzaFlVWVJtZnlyY1FLMVM5WFJYSktsU1B2RFR6YUhreHFXTWRk?=
 =?utf-8?B?N1gzTXNSazFaRU9RS2hLODdhVGVjTFp6TDlnVGxHNnZBTC9mL2R3dlZWOXNu?=
 =?utf-8?B?czhZRDhUbGUxQXZLc3V4cVlUb2dYK3NyWlRuM1J3RWUrOU5zN0VSL0xKSXFQ?=
 =?utf-8?B?dDNhRVd0VlcwWW9RREt2bnNaSENaRDBnb3AwdmRqZGZzQXdIeVNJajIvVFFu?=
 =?utf-8?B?ZXo2enYrNTRzWmF6TUdGeW0ydGlCdTVWVmprbkxlUVpTRlhOUjdSbEhEZDlI?=
 =?utf-8?B?RkNPOUF1OEV6UjBTbndjUTJwcHROSUZsL1JoODd1akJnSEdFbE9GUjVDcHBH?=
 =?utf-8?B?NjNvRjIydkFlNmh5UWdNb2dWbjBpSWRnV210eERMZStqZnYvbDlreVpyTFRo?=
 =?utf-8?B?bklJWkhoTFJPeTVkK05VcWljU2YzR29wMmpHSWd1SzlVd0xYWmJVamRDTWQ0?=
 =?utf-8?B?UlRkMmlCcG8vTi9sd3grM1Y5YjNONVQvcDJNdDFncU1aODladW0wTmFqQVUr?=
 =?utf-8?B?QmthRmMzYlJPekFXV3VHU2lyeUdxVXoydUFna3cyTjNSOFFZanFmUHZyZDc3?=
 =?utf-8?B?enJWSmNxOTkreVlqM3lsNXhhdG51MC84ZEpydFhzTjJGWTM4Umg1djRSeDFG?=
 =?utf-8?B?cmVoR2ZvRDFDQkd6cE8ra0ZpOFdET25uMnlWc1NFa25wZHRrMzVJcVlkM29Q?=
 =?utf-8?B?b3F3VEpwUk9YTkN5NU1iTnFETERBa25Tb3RVK3dsUllyVmlJRDRrWDJJV0lU?=
 =?utf-8?B?QWN0djNkMU0yL3N6Rk04VWl4VHI5QUNoeHJEbW1uUzRhN29OTFBBZ1ExRExL?=
 =?utf-8?B?dlBBeEsxdUNEY1NOSGxFUDg4bGVLcStLeDE4QXJncVRiQ0swT1VMdm9MQUhG?=
 =?utf-8?B?SXNLY3JUWUxhaUE1Q2JyTXEwZStYOUlLdTgrNitkQU1LWVhZY0VEZG1iWWtp?=
 =?utf-8?B?VnVBNzdheUYrZkg5VDhoNnRMV05BRjJzTFhpRXA2SjVhbld3Q1h6M2hGU3Ru?=
 =?utf-8?B?WHhIa01JOUg4MG5LQUtXd2xRYzRzb2o0UnI2TjNMQ3hmNjI3YUZUby9HUU1R?=
 =?utf-8?B?MXpEQ0FnNW1SWUVaZUZ3aEZOQVdTLzNhWk4zQjF5dUNwdXYvSlEyNHhhQ0RZ?=
 =?utf-8?B?Q3E3enVmaTd0T2I3ZnZLL2tFbmxVV0cyeEVVMWpOZVVBeXRxOTlldTMzNUh3?=
 =?utf-8?B?Q1BPMEVGVnhiVXpaZ0g5bkxCNXI5NGxqNVBLVDR1UlhqSWNWNXY3NVdTVnMr?=
 =?utf-8?B?dXB5YVJTR0grUHU3ck1ZTnZpa1BJOFl5a1EzYms1ZkFtMVZzRHBHYzhYdFdZ?=
 =?utf-8?B?dmY0eDhhWGVXTjhXMFNMQ3JJZk95NStDb0V4TXZaT202RkFqTi9HQmFwWXo1?=
 =?utf-8?B?Y1ZpczA1dHBZam1KckpMZ3hocTFXVS91aTFaNHlRbjZHOFdGR2p6N2VZYkQ2?=
 =?utf-8?B?YmJZb25SS3ZFeUhhSlhBa012VVkrTFI2RkVLZ1pVbjgzRmhib2o1QXY4enNx?=
 =?utf-8?B?czhiQytnYjVUdEJLbkZ5ZC9NUDdlVjhSY2dseXhQM3k5bCttUTVUSng2V3Jz?=
 =?utf-8?B?K1RFZ2NUbEtXeUVqZkVJT0lDZ1dlVVpiTFhFc0s2K0VwNEhjYmR5UlZ5WWhP?=
 =?utf-8?B?dzllaVVJQitZNDZjZnRMb2dNd2ZuM3NPcVpYWFFJbGVrSjVCc0wzWjJOVndD?=
 =?utf-8?Q?psc1icNbonI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yy9LZkk2a0RBOVRBNEh0OFBEZkhROVpLakM1cEFxSTVPZXlyUFg1aHlLcUJL?=
 =?utf-8?B?SUc2U3o3NnFIelVXd05iRk5FakJjdFVoWjBKMWN4Y2NmNnF1OGFKOGErcTlR?=
 =?utf-8?B?U1JCK2R3Z1VrM0I2M3Y1NzdaaCtlRlRWN3QrdTZCQjlwU0NBbFI3cHpXYjUw?=
 =?utf-8?B?QWorTWpsSEdRT3I4bGpwWUtoWkp5YzB6TVpOSjE1S3BGZVI1cmdLUlRBQ3Ni?=
 =?utf-8?B?V3pVQVN0aVlmVzNqOHVUVjB6WndZSXJqMm50RDNPNDV2OWV1VysvdUlIOE9N?=
 =?utf-8?B?dzdsbXpteHdqcXVoWXgxQ3lneWxuWFA4czF1ZHBlQjBlUXlPQ0xRVUVUTmdh?=
 =?utf-8?B?S1hDZmlHaHpCdEp6NXFvY1NmUEIrZkRRVE9MMmVtQ3YraVdOdUhWb0hweWg1?=
 =?utf-8?B?bmVXbkJtRm9xY2ZNaEk4dWw3WEw1QnFoM1lCTDRheVhmODYyZmNxdGZwQWhk?=
 =?utf-8?B?SjdKai9LUDJMTFhSZUdsNVVGRHRNY1lSSFdJWlFFSFhwQVl5VEZRN2FJZldB?=
 =?utf-8?B?bW03QUxJM0RLTktsNXczdWQwNUYxaVYzeXBKT0MvaFF1QmtzMk5BQVpWWTM4?=
 =?utf-8?B?b2VBbzBaRjR0SW54emJnQis3U1JLSUdPNmd2RUdJNEQ5di9yaEF4TTdud21O?=
 =?utf-8?B?bUgwMEdXMHNpbUlubWV2Q25nVGhKRUtSazBHc0dOMWZIc3cxTUYyR1JrREo5?=
 =?utf-8?B?TjRlQzBBUHI2WG5NQUM5eGF1RUZhR29RMkZONjBhT3lJWEVLUjUyTjZ5aGgz?=
 =?utf-8?B?clVaVWlhQmJ0aXlBZXZqeng2RW44eDhGY3Q0MkFDbHpZN3NXTXdPLzBXeEFB?=
 =?utf-8?B?UHY0Z1k3ZzZoKzhCbGhvVmI4YlBZZFhIekZ6R242eSs5SGtZdkFsZS9EUStZ?=
 =?utf-8?B?N3ByQjRuWmtJM0RCV0ZXandjL3U0VHlkKzQ4ZXVUU00rTDN3QzBvUVFUM05C?=
 =?utf-8?B?ci9xWjlDdUtlNTQ4WkdKeGlIMWFpaW9telg5TFpRU09xOHFSb3lwVS84alBs?=
 =?utf-8?B?VVFmNGsvYy8xWWlmTDBhTUZMRThiRkd2RDlBWURXMFN0TVFBWnNoc1V1ck43?=
 =?utf-8?B?d2RCbGo3RWhzdmlqK0tvZm85Zkt6dGpGR0VzbC9QVHJ5b2Zoa2VSdDFqbkRz?=
 =?utf-8?B?ODRhVFE0ZklEcVJ5UHpySWdoaVpDMHJEWVNZTVo1UnNOQVpxZkJGN09QTWJR?=
 =?utf-8?B?T0FnS3owRzFKUVdVYkpvOUkyb283WXhVNERLTHUxTjdtL3FpNUU0OUpLdjZI?=
 =?utf-8?B?eWV6bEIxMWZHNXFQbWdzV2NjR2U4Y1hlSHd0eWdFNHRXWmN6T0pnclk5RUhK?=
 =?utf-8?B?S25UNjRkcDQ2REwzbEs4WlM4S01iaTRhTzN5M3lDelUrU09ibG9IWmhnTW5i?=
 =?utf-8?B?bEZWdkVLREFrV1Yrd3BPOTFzZHpUcHZOWTlxelZkVlJqT0VodCt5eUlFWlI3?=
 =?utf-8?B?SGFuMmY3TTR6SkVqRUdRdXRqQ25tSzcyLzlkRGZ6OXRyOFZMbTFqRlcrQllE?=
 =?utf-8?B?ZkFMOStjbHQ3bG00dUtNYzRpNi9wcFJxMHFsdmR3ZE9ZVWdSK1dvNEVXcXhH?=
 =?utf-8?B?NDBLQzRwczdGcExHSVEzVHJYTjh1QXo3L29ZR2hhNWx6TWdvVm1hSVk0UE1t?=
 =?utf-8?B?MVE1T0VublM3ek9jTkpjY2lyTEowbmRaakZZWmJnNkdnK0ZIN1ZzSitBZW54?=
 =?utf-8?B?WHFHTmxZblBsT0xTM1VsRGFpNHZFcTZBT1RCcThoTHl5YlVjVXgweDZ3YWE4?=
 =?utf-8?B?K0VPSktDeWVaTENld1pBNHROcmU0UzJsUE1DRGFkQVFsUStkTWFrYUhIRXM5?=
 =?utf-8?B?TnRVa0xBei85ZnZJZFUvVkNEWWRZYkdxbHV1VkwzelFsV0p1eXZtdVFoVEQ2?=
 =?utf-8?B?bnZWQmwweWlkR09iODVYc0tvOTl0RkFKNFZjd2M1SmVMRGpCNDNYRHplWWVE?=
 =?utf-8?B?UGdLY2JOMFF6b3JaaXNVRXA0NzNJYUVKQmNQSlMvVFJWU1ZsZ1dwdDBSR1Y2?=
 =?utf-8?B?bFlaalowY214Y2tUZHNiSUZhcEdPdVZzcDd6NnVJVzBtcGlNUDVFSTRIdTgx?=
 =?utf-8?B?RXFGQytMbXRYd1BNS21YaXJEU1hpdUNNellLbGZja0VXNFRzSS91UmJUelVw?=
 =?utf-8?B?b01IRkMyR3VvMWY3aWtmRU0vUnhkZnZFdkoyQlNLd21ROXcvOWVHTjZnUGJD?=
 =?utf-8?Q?t4rmxQCGcc59YlPE/Ol0a5I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96b634ce-32e5-442d-d652-08ddd3438d27
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 10:42:04.1994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NOPL2Ac+Oj6BWWbL2YgMvGMPJC4oOOwurXZkx8GEprGIkfmM000Ap6kKu6Z9ak28Jlpf5pgVWY1N3mCewUtyvTGqERVygWTei/XEcsTH/YU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
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

Hi Krzysztof

On Mon Aug 4, 2025 at 7:57 AM UTC, Krzysztof Karas wrote:
> It is unlikely, but possible for the first call to
> intel_context_create() to fail with -ENOMEM, which would result
> in entering the following code block and decrementing "count",
> when it is set to 0 (initial condition in the for loop).
>
> Protect from overflowing the variable with additional count > 0
> check.
>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/d=
rm/i915/gt/selftest_hangcheck.c
> index f057c16410e7..cc0798dd30d5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -904,8 +904,10 @@ static void active_engine(struct kthread_work *work)
>  			arg->result =3D PTR_ERR(ce[count]);
>  			pr_err("[%s] Create context #%ld failed: %d!\n",
>  			       engine->name, count, arg->result);
> -			while (--count)
> -				intel_context_put(ce[count]);
> +			if (likely(count > 0)) {

I might consider changing it to a for loop to reducing indentation,
but that's a matter of personal style. Overall, it looks good to me.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
--=20
Best regards,
Sebastian

