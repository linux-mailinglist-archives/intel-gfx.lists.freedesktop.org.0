Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C307959F14
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 15:52:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2257089A72;
	Wed, 21 Aug 2024 13:52:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emlvyiA2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C4E89A72;
 Wed, 21 Aug 2024 13:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724248330; x=1755784330;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7BkMa1Ofd44TTCpZ432Lr+LaONQPiB3BCzG8ekX92f0=;
 b=emlvyiA2Wy1984qJ+GyqjOXd9xGTvFu+mNZqD5j06yl25uSCp0y1F5NZ
 zrSDAZWvwGSOPd3/1k1+E29eNBzAqQkRuM1Ads738+4TmmloSukK1VsrS
 Kr2miem/StNKFMFgAFp+b4OIk4rYTxYIoXZxn9LOnBUxGdwmh7+0c7Q/Q
 ZVQq0scwYCm4PSl9af8RxuUPfP24Q1U/Cv0VTLV8AhyWL6gtQ5kpLnwJX
 YfWymeomSBM0bmR9LRJWZCpFUCbjUIwLg5FUKi4IEb9yzsFYX/hkGsuiI
 Y2LV9PG/CYfn3VkcJYFAtlywfXqa+pGz22t8qEueCyiaQAWVdREysvELW Q==;
X-CSE-ConnectionGUID: IIgQd3UbQp2PmKvPXHXePQ==
X-CSE-MsgGUID: VIEHJ+p+Rx+RX/ebGHOmhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="26476302"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="26476302"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:52:09 -0700
X-CSE-ConnectionGUID: SIRoxY6BTYii5JLvGrqe8g==
X-CSE-MsgGUID: BmK9p0oITvynJLI1Dciy1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65446899"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 06:52:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:52:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:52:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 06:52:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 06:52:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k/5nx9nHaPvXjq3f7BzU7Oo/55jOX+Q+6forqkJUQifFqpGKwDxAJkhVb/Eaeb+B97zqgbp0TkldsCblN9q4vBMOHJPUz7JVgNz4py8sSROIqGR7S9n6WEhd4c6+vNXw1r/k2ieD2bnYPufoh2EiskAl6+ScH8vq9HDt3Tk2BBX53Ub/dN/J//njm0fT/pdwTxlb1vG5pIQwI6MrydLrtSczoD6ODrah8EO0q/yzja8NPhmj2kW3hV40ioWaqTlThBorQLrRjwNEENVk6vC4GZX1l9cyqUhfO7daarYYLbMGPfaJkHRywUGB2mUJNBuPeJFy7Hdno5LRBAidfAAvmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sZbORveWnMr7otKp+ih6t7ILnxMMrByvpxxUW6mS8C0=;
 b=EbFUpBE5CqPZPkk0rxOHE2XfXVQDA9AVDLxyH3en+M9cwWRX/32gXhGJkvLjAJKaRWBzBH01n0pVhhsMhKe7MLwiBYkx++Hqjh6GIzzS0OUlQxKwYTRpGiQxZaa0ddKa038BZQ2ZfST0V3joBovpc9XhJtP7tQF6pLNbUdqBJ2qa7BOZSib3lBSs3fUaqRb/ppClf9xOWstC3fIq145BHGzsEZT7FKOznf8V3+tE2bToV7xt2P45O4AsaFYbPaS9hrghk8cCx92WdrH7+ZMbQuj3LS99GtwzgGjp7xDUzevi+BCGEOt5/R/pgQmqTGyEDNJqGdiMoci4s89hTgocUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 13:52:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7897.014; Wed, 21 Aug 2024
 13:52:06 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240821095036.2044654-1-jani.nikula@intel.com>
References: <65e319048c369fbbd5018badfa24e457ca4e956e.1724180287.git.jani.nikula@intel.com>
 <20240821095036.2044654-1-jani.nikula@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: identify display steppings in
 display probe
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 21 Aug 2024 10:52:00 -0300
Message-ID: <172424832093.2071.7215356235062692151@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0173.namprd04.prod.outlook.com
 (2603:10b6:303:85::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB5867:EE_
X-MS-Office365-Filtering-Correlation-Id: cba73ae9-00b9-4236-27d3-08dcc1e871c4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUVjckdmdW5SZldFU1o0U3NXdFpBZDFTT2VoaFUvTzVPaTB0NXpxSlphTDRZ?=
 =?utf-8?B?MXo2M3BZbzg2VFBBQ0lDM2VOQTFZR0R0dHZTM2NQMWdqcnd4cEZ6ZXZFaUN4?=
 =?utf-8?B?LzExbGhBb3F0S3gvSXM0b1BjNGlYUURMaUR4ZFNKQTVhSndpVXlNS0dwZ0pB?=
 =?utf-8?B?c252NkUzNWVSN01YY0V2R3Biem9rUFJ6SFZZRTVacHpSVHFtWGVnRHhnTHpy?=
 =?utf-8?B?WE5ZRjkwdnUvODJKWUpDd2M1OE0zQzRqK1lMNldBMVFxZXRlZ2szTjhpNnY4?=
 =?utf-8?B?Y3F2YzRWdy9hWE93NzFBenpSWEkrNWpFenR3MXlNc2x0c2g1VzVheW96SjBn?=
 =?utf-8?B?RWZFRGUvM0FXVEF1RXIyYzdzSXQ2b1c4Vnl3cUUzSE15MXRyYUxtR2xobU9F?=
 =?utf-8?B?ZUtJWHVWYVZDQnNYR3FRSHV1UnE1RFhhY3FydVhCejZBeUxCYitORVA2eldV?=
 =?utf-8?B?dXp5ZmtjdExKTVYyU3NISnhmN29hVkt2dVlidXlER1dGN3A5MGNVZmErR2ln?=
 =?utf-8?B?YW1aOTA1bmtBTXF0dmpSNEp5QVNNZms4b2lHMkhwN0FwZmJjUXM2QVB6TmRY?=
 =?utf-8?B?S1BKSXI0TUVNM0lpRVYwTnZJMFJiRSt5dzRjN2NETXl2dTZrcGNXTEQwTXBy?=
 =?utf-8?B?SVVkTjhyaVJKWEJ0TkFHYkNGdjNwS2NNdTVCYzRxZitKbWNuUFNqUkd4RjZV?=
 =?utf-8?B?RGpzNHE0aTIvVHBBK2d4Z0hBRnJJZXhBRUNxaGttR2xXTWVZZEFqZXRwNll3?=
 =?utf-8?B?SlZPV0RVZjRxbi9HMXdyb296WDFnZHZxYWJ4cVhjQ0p2L1VXTDUwTnlrZThU?=
 =?utf-8?B?YmNqZkV0cm5JSG5XYWJNdy9yU2w4VTdHb1hkZDMwT2NBVllCcS9vcVF6ZlhK?=
 =?utf-8?B?VUhSUUZHUWdOdjcrSGVIa0RROVRPanZWTHpUL2lobHRtQXE0RytsWWdVWnVl?=
 =?utf-8?B?RFdFRW5NS2dWZmVhOEhLeGtXUVlQZVo3Y1lXYTdFbE9YT1V6c1pBS0JZbzlh?=
 =?utf-8?B?bnF6Sm94UUhWMVpISEx6S29VV0NLUnZ5UFY5QUVudSs0Y1llQ2FYQ281T1FR?=
 =?utf-8?B?TGFLTitNditQSkQ1ZmFCNS91QTczN3pjU2NRZEd2ZmtIYldlbktEWmF2YUlH?=
 =?utf-8?B?NlB6T0kvK1NMMlJxYnFFZEprTFFiM3F0TnJPc2ZvVTM1OC9kOEduMTNvK3NI?=
 =?utf-8?B?OVZEU1U3NHk4emgxbEJzZ0p2TEJreTk3a09uVEhwSGMrUGlUWEtZNkplNEZt?=
 =?utf-8?B?ME1sZ2p1dS9EVjBZYXVlZ2RNeTZDSklYaE1HbzB3Y2RuenR5c3NXdG84a0hu?=
 =?utf-8?B?dVZkbmw3N2N0bnlVZzdIYXdPakdKMHB6Mm1LTWYzUG45M3BucmpoRDZQSTZn?=
 =?utf-8?B?N0t6WEw3blJmS3lMMmZBalNRN281MCsrNVpiQWZHYTZFWGd2NUFpbVI2OC9y?=
 =?utf-8?B?UFJrditibjZDOENKc1gzOXhVR0RTQldOSFVaT1lDamxmdDBGM0k0WVF5Qndr?=
 =?utf-8?B?TzFSUHN2MlJidU5lTURWNUFLZ2s4Vm9GNC9zczVOdVI1ejNORzNoUzBvRVQ5?=
 =?utf-8?B?bFhhazAyc3ViV25OWmhUWmsxNTB3cEdBQTR6dlFrVWZNd3lMSDhFdlRkT2I3?=
 =?utf-8?B?RWRycWg2THZHTUZBbjVFTXUvWDBhT2tZZFN5dDNRQ1N1WlViS2oyM05XUHky?=
 =?utf-8?B?TUZGWm9HUWdKYWlJV05xNWpISXV5NEk3NHVDb0wwMEJ6VE9NOXl1Y0trRWhD?=
 =?utf-8?B?a2FRS0E3T09McnB0ekQ3MTBlaFJLa29YRTlxTklHUkNaaFY5NFREVkxNNHZG?=
 =?utf-8?B?Z0ZsVVZRVXRRWFdBZ0ZGZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dlRLdXFtc2lwWjRlNjZKUVNrOWFDODRyVVovZm1vUURhZ1J4Nmgrd0hMVDlN?=
 =?utf-8?B?V3VjTWNmV0NXRmpDM2t1TENQVG5iRGJFQ2h4WS9nUWFNRHdUdytlVFFzRlJu?=
 =?utf-8?B?NXJmMFdhdnE4U2RvdC9LRkRDRWsrQ29vTWR1WHZNOGF1UVowc3djMHh6SnZE?=
 =?utf-8?B?b3NEcjlkNHE3ZmM0SkZ1OVhNRHRZdHpzNFMwRlA2YU9mWkxoUE4veDFzR1FC?=
 =?utf-8?B?RVRhV1U0UDNqb1Vta0JQUXNmd0lRSTNYaU42NXgwQ1JiVUlMS1pZYVpmMys5?=
 =?utf-8?B?YlpRZmZQdjg4SXdMVkF5QlB5TnFWa3BaZXVZcGxSOXBSbEpSNy9aaHZYb0Y2?=
 =?utf-8?B?MkhjUHlWR2MxQ1QzckptRG5wSWVYblRQSnZIWnZTdTJ6WGdRdGZmck11eFE2?=
 =?utf-8?B?Y2dFWERFMnNSTU50SWhvRi9aajFXelJuQWN1RlRoVE9rYkpNTjBjTDl5amdX?=
 =?utf-8?B?STEyUGRSdnBvdmozejdrMS80aTNyV3lnbEpMZ0ljTXdqeEl2cFhGN0UrZ2lM?=
 =?utf-8?B?QVhscC9wc1VMYzVTU1VRWGcxSllvYnJYcEF5WTVLeGVjRGtER012NktGdmhB?=
 =?utf-8?B?b3EzN0FHQkVEY1l4akRDRUpDMlNZa1hCQmFWdXZTMGpNalQ4MjI5VTBKRVVD?=
 =?utf-8?B?cVFlL1FoaUhVT0UrU2d4OWhObWhhZlVFSm0vdXBnMUk2SGFDYlFRTkxuckZU?=
 =?utf-8?B?cnJ0WlNsNWUyazlQWmZIQisyMlRMZFFLTHd3QnFKOTZoQ2twQmxWSmdGdkpZ?=
 =?utf-8?B?cHJRY2xKQ3F6dU5HSU9MbURTVmcrRk1xWEZHOXBtcUVMR2JnTGI3ZUNZL3Jz?=
 =?utf-8?B?UzVibFBEdlM0RHdQSFZjczhEQ3h5ZHo2TDFaY1k0TTdQb25IamdzMU9MTWpO?=
 =?utf-8?B?UGhoVlZSYTNacWFXUW94UW1NczQrVjVFR3FLQ2pSQlNib1ExNExsY2k5RjJs?=
 =?utf-8?B?dE1xWVJVM2gxK3RhaDFzNlVFYWZIT0owaGxMcGhjT1lmZWozODBkdE5UL3JB?=
 =?utf-8?B?WU52bnQwUjFQeE56ZnYvc05FWlEzZXhYUklBbnBRY3JLeG5UaURqOEswckVt?=
 =?utf-8?B?ZENIaXd0WEtlcXZOSGpiWVhJc2o3MSs3SDBmSDg4Z0dsUGowMmI5cGU1ODBm?=
 =?utf-8?B?c2dLVkl4NG1YSlhBTWZqK0lZQzU5dC9sMlhEWXcyMExCdEx4S3ZNTE5vODJl?=
 =?utf-8?B?Uy9wT243WXQvQ0ZDdDhKak9KUmVldlNUanlySUhiaDcxbWRmSHlNRlFCMW9V?=
 =?utf-8?B?bW5Rcm9VbHJQOXJxSkJLdHNueWxabnFxLzJBYlNkVU1BOVNzejgwNlZwTitB?=
 =?utf-8?B?Sm9FbHpuT2l2cXk0UHozVDdCT25oN1lPOEVkRkZxcjhleG5sblpQYStKRDZW?=
 =?utf-8?B?MWQxRXppek94dWRUQ2tBcVJXNDFTejZyQTZaYjFLSDduUlNTSGxlNXpZTzAr?=
 =?utf-8?B?cmNpei9YOGZ6Z0UybFRNditFajlwZTBNRG0xS0ZBR0NrdlViRUpTT0NoTWJU?=
 =?utf-8?B?TmptNFB2SFhUNG00RTkxWk9sd1BwYXFjZWVYcnAwVWRGTjhRQW1wQUZUYXBZ?=
 =?utf-8?B?NjRCbzVOWTYrYndlNUFTcFBzSHEvdHJXVUI1TW1VUTFoWE13SWg5ZnRmTDVh?=
 =?utf-8?B?K09jbFBaUThtazJFQUhsdlF6Qzhqc25PakkyN3NhRXhFajNmUmsvLy9IMEY4?=
 =?utf-8?B?Mk1oV3RxY3k3RkNYV0VoM1dkMXp6TmI5Wk1pZVJlYVV5UVE3ZXJ1S2tQaFRM?=
 =?utf-8?B?cEhXSEZJU21FL1hlaUlNNUIyd0l4MS9hZTZqVE5ITzhMMUkvM092ZGZORU1F?=
 =?utf-8?B?SlNWSGF4RXpWU1lveGthdmtVYjE4TUFKTE5QR1RIM0dGM05BNldJdWVTVGgv?=
 =?utf-8?B?YkFGWTVnd3Z1YmtCbjBLcVI5dXVhVEo0NGl1YWtqcHJ5YzNuaklkMElpejgz?=
 =?utf-8?B?cWV6L1F4Mm5nMmhsUEZLV0lVdy8rNVlHZGZlUVN2Z0lQcmhqVzBpTzJ1Q0x6?=
 =?utf-8?B?NjBWZTlsNVcrSmVqdW9vZUdNRndqbWQ5Q3VWM2R5YzV5M0wrcmhYZ0dKMHZt?=
 =?utf-8?B?aUpIVnNjeWVVNCsvZERTVjE2M0Vmb1RCSG10aWFTTElXOXVjalpYd2ZhL2Vs?=
 =?utf-8?B?MVN2MCtvbldCVFNpZWV4UmNDSWJOa0FIL3gwbXJvV2ZUd0hnMXBuaTJoV1p3?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cba73ae9-00b9-4236-27d3-08dcc1e871c4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 13:52:06.8400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ppKKQp1dB6cVoZuPaFKFWHsTd+PdSMiCuGFhms0OYxqVgNBk0FygSxusrRB5Z/eOm0DZQCFnirZUcEkUKRfGrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5867
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

Quoting Jani Nikula (2024-08-21 06:50:36-03:00)
>Both i915 and xe have code to identify display steppings. Start
>deduplicating this by, uh, adding a third copy in display code. This is
>not yet used for anything other than debug logging. We'll switch over
>later.
>
>For platforms before GMD ID, attach the mapping from PCI revision to
>stepping in the platform and subplatform descriptors. This is a
>considerably cleaner approach than having it completely separate.
>
>Also add a separate field for stepping in display runtime info,
>preserving the value from GMD ID.
>
>v2: Handle NULL subdesc (Matt)
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../drm/i915/display/intel_display_device.c   | 225 +++++++++++++++++-
> .../drm/i915/display/intel_display_device.h   |   3 +-
> .../drm/xe/compat-i915-headers/intel_step.h   |   1 +
> 3 files changed, 217 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers=
/gpu/drm/i915/display/intel_display_device.c
>index b28d55fa0c3a..dfa923672492 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>@@ -16,14 +16,25 @@
> #include "intel_display_power.h"
> #include "intel_display_reg_defs.h"
> #include "intel_fbc.h"
>+#include "intel_step.h"
>=20
> __diag_push();
> __diag_ignore_all("-Woverride-init", "Allow field initialization override=
s for display info");
>=20
>+struct stepping_desc {
>+        const enum intel_step *map; /* revid to step map */
>+        size_t size; /* map size */
>+};
>+
>+#define STEP_INFO(_map)                                \
>+        .step_info.map =3D _map,                        \
>+        .step_info.size =3D ARRAY_SIZE(_map)
>+
> struct subplatform_desc {
>         enum intel_display_subplatform subplatform;
>         const char *name;
>         const u16 *pciidlist;
>+        struct stepping_desc step_info;
> };
>=20
> struct platform_desc {
>@@ -31,6 +42,7 @@ struct platform_desc {
>         const char *name;
>         const struct subplatform_desc *subplatforms;
>         const struct intel_display_device_info *info; /* NULL for GMD ID =
*/
>+        struct stepping_desc step_info;
> };
>=20
> #define PLATFORM(_platform)                         \
>@@ -610,6 +622,13 @@ static const u16 skl_ulx_ids[] =3D {
>         0
> };
>=20
>+static const enum intel_step skl_steppings[] =3D {
>+        [0x6] =3D STEP_G0,
>+        [0x7] =3D STEP_H0,
>+        [0x9] =3D STEP_J0,
>+        [0xA] =3D STEP_I1,
>+};
>+
> static const struct platform_desc skl_desc =3D {
>         PLATFORM(SKYLAKE),
>         .subplatforms =3D (const struct subplatform_desc[]) {
>@@ -618,6 +637,7 @@ static const struct platform_desc skl_desc =3D {
>                 {},
>         },
>         .info =3D &skl_display,
>+        STEP_INFO(skl_steppings),
> };
>=20
> static const u16 kbl_ult_ids[] =3D {
>@@ -634,6 +654,16 @@ static const u16 kbl_ulx_ids[] =3D {
>         0
> };
>=20
>+static const enum intel_step kbl_steppings[] =3D {
>+        [1] =3D STEP_B0,
>+        [2] =3D STEP_B0,
>+        [3] =3D STEP_B0,
>+        [4] =3D STEP_C0,
>+        [5] =3D STEP_B1,
>+        [6] =3D STEP_B1,
>+        [7] =3D STEP_C0,
>+};
>+
> static const struct platform_desc kbl_desc =3D {
>         PLATFORM(KABYLAKE),
>         .subplatforms =3D (const struct subplatform_desc[]) {
>@@ -642,6 +672,7 @@ static const struct platform_desc kbl_desc =3D {
>                 {},
>         },
>         .info =3D &skl_display,
>+        STEP_INFO(kbl_steppings),
> };
>=20
> static const u16 cfl_ult_ids[] =3D {
>@@ -706,6 +737,13 @@ static const struct platform_desc cml_desc =3D {
>                 BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>         .__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_B) | BIT=
(PORT_C)
>=20
>+static const enum intel_step bxt_steppings[] =3D {
>+        [0xA] =3D STEP_C0,
>+        [0xB] =3D STEP_C0,
>+        [0xC] =3D STEP_D0,
>+        [0xD] =3D STEP_E0,
>+};
>+
> static const struct platform_desc bxt_desc =3D {
>         PLATFORM(BROXTON),
>         .info =3D &(const struct intel_display_device_info) {
>@@ -714,6 +752,11 @@ static const struct platform_desc bxt_desc =3D {
>=20
>                 .__runtime_defaults.ip.ver =3D 9,
>         },
>+        STEP_INFO(bxt_steppings),
>+};
>+
>+static const enum intel_step glk_steppings[] =3D {
>+        [3] =3D STEP_B0,
> };
>=20
> static const struct platform_desc glk_desc =3D {
>@@ -725,6 +768,7 @@ static const struct platform_desc glk_desc =3D {
>=20
>                 .__runtime_defaults.ip.ver =3D 10,
>         },
>+        STEP_INFO(glk_steppings),
> };
>=20
> #define ICL_DISPLAY \
>@@ -773,6 +817,10 @@ static const u16 icl_port_f_ids[] =3D {
>         0
> };
>=20
>+static const enum intel_step icl_steppings[] =3D {
>+        [7] =3D STEP_D0,
>+};
>+
> static const struct platform_desc icl_desc =3D {
>         PLATFORM(ICELAKE),
>         .subplatforms =3D (const struct subplatform_desc[]) {
>@@ -784,6 +832,7 @@ static const struct platform_desc icl_desc =3D {
>=20
>                 .__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_=
B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
>         },
>+        STEP_INFO(icl_steppings),
> };
>=20
> static const struct intel_display_device_info jsl_ehl_display =3D {
>@@ -792,14 +841,21 @@ static const struct intel_display_device_info jsl_eh=
l_display =3D {
>         .__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_B) | BIT=
(PORT_C) | BIT(PORT_D),
> };
>=20
>+static const enum intel_step jsl_ehl_steppings[] =3D {
>+        [0] =3D STEP_A0,
>+        [1] =3D STEP_B0,
>+};
>+
> static const struct platform_desc jsl_desc =3D {
>         PLATFORM(JASPERLAKE),
>         .info =3D &jsl_ehl_display,
>+        STEP_INFO(jsl_ehl_steppings),
> };
>=20
> static const struct platform_desc ehl_desc =3D {
>         PLATFORM(ELKHARTLAKE),
>         .info =3D &jsl_ehl_display,
>+        STEP_INFO(jsl_ehl_steppings),
> };
>=20
> #define XE_D_DISPLAY \
>@@ -850,10 +906,23 @@ static const u16 tgl_uy_ids[] =3D {
>         0
> };
>=20
>+static const enum intel_step tgl_steppings[] =3D {
>+        [0] =3D STEP_B0,
>+        [1] =3D STEP_D0,
>+};
>+
>+static const enum intel_step tgl_uy_steppings[] =3D {
>+        [0] =3D STEP_A0,
>+        [1] =3D STEP_C0,
>+        [2] =3D STEP_C0,
>+        [3] =3D STEP_D0,
>+};
>+
> static const struct platform_desc tgl_desc =3D {
>         PLATFORM(TIGERLAKE),
>         .subplatforms =3D (const struct subplatform_desc[]) {
>-                { INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids },
>+                { INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids,
>+                  STEP_INFO(tgl_uy_steppings) },
>                 {},
>         },
>         .info =3D &(const struct intel_display_device_info) {
>@@ -866,6 +935,12 @@ static const struct platform_desc tgl_desc =3D {
>                 .__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_=
B) |
>                 BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_=
TC4) | BIT(PORT_TC5) | BIT(PORT_TC6),
>         },
>+        STEP_INFO(tgl_steppings),
>+};
>+
>+static const enum intel_step dg1_steppings[] =3D {
>+        [0] =3D STEP_A0,
>+        [1] =3D STEP_B0,
> };
>=20
> static const struct platform_desc dg1_desc =3D {
>@@ -876,6 +951,13 @@ static const struct platform_desc dg1_desc =3D {
>                 .__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_=
B) |
>                 BIT(PORT_TC1) | BIT(PORT_TC2),
>         },
>+        STEP_INFO(dg1_steppings),
>+};
>+
>+static const enum intel_step rkl_steppings[] =3D {
>+        [0] =3D STEP_A0,
>+        [1] =3D STEP_B0,
>+        [4] =3D STEP_C0,
> };
>=20
> static const struct platform_desc rkl_desc =3D {
>@@ -892,6 +974,7 @@ static const struct platform_desc rkl_desc =3D {
>                 .__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_=
B) |
>                 BIT(PORT_TC1) | BIT(PORT_TC2),
>         },
>+        STEP_INFO(rkl_steppings),
> };
>=20
> static const u16 adls_rpls_ids[] =3D {
>@@ -899,10 +982,24 @@ static const u16 adls_rpls_ids[] =3D {
>         0
> };
>=20
>+static const enum intel_step adl_s_steppings[] =3D {
>+        [0x0] =3D STEP_A0,
>+        [0x1] =3D STEP_A2,
>+        [0x4] =3D STEP_B0,
>+        [0x8] =3D STEP_B0,
>+        [0xC] =3D STEP_C0,
>+};
>+
>+static const enum intel_step adl_s_rpl_s_steppings[] =3D {
>+        [0x4] =3D STEP_D0,
>+        [0xC] =3D STEP_C0,
>+};
>+
> static const struct platform_desc adl_s_desc =3D {
>         PLATFORM(ALDERLAKE_S),
>         .subplatforms =3D (const struct subplatform_desc[]) {
>-                { INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_r=
pls_ids },
>+                { INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_r=
pls_ids,
>+                  STEP_INFO(adl_s_rpl_s_steppings) },
>                 {},
>         },
>         .info =3D &(const struct intel_display_device_info) {
>@@ -913,6 +1010,7 @@ static const struct platform_desc adl_s_desc =3D {
>                 .__runtime_defaults.port_mask =3D BIT(PORT_A) |
>                 BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_=
TC4),
>         },
>+        STEP_INFO(adl_s_steppings),
> };
>=20
> #define XE_LPD_FEATURES \
>@@ -986,15 +1084,34 @@ static const u16 adlp_rplp_ids[] =3D {
>         0
> };
>=20
>+static const enum intel_step adl_p_steppings[] =3D {
>+        [0x0] =3D STEP_A0,
>+        [0x4] =3D STEP_B0,
>+        [0x8] =3D STEP_C0,
>+        [0xC] =3D STEP_D0,
>+};
>+
>+static const enum intel_step adl_p_adl_n_steppings[] =3D {
>+        [0x0] =3D STEP_D0,
>+};
>+
>+static const enum intel_step adl_p_rpl_pu_steppings[] =3D {
>+        [0x4] =3D STEP_E0,
>+};
>+
> static const struct platform_desc adl_p_desc =3D {
>         PLATFORM(ALDERLAKE_P),
>         .subplatforms =3D (const struct subplatform_desc[]) {
>-                { INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_ad=
ln_ids },
>-                { INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_r=
plu_ids },
>-                { INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_r=
plp_ids },
>+                { INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_ad=
ln_ids,
>+                  STEP_INFO(adl_p_adl_n_steppings) },
>+                { INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_r=
plp_ids,
>+                  STEP_INFO(adl_p_rpl_pu_steppings) },
>+                { INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_r=
plu_ids,
>+                  STEP_INFO(adl_p_rpl_pu_steppings) },
>                 {},
>         },
>         .info =3D &xe_lpd_display,
>+        STEP_INFO(adl_p_steppings),
> };
>=20
> static const struct intel_display_device_info xe_hpd_display =3D {
>@@ -1023,12 +1140,33 @@ static const u16 dg2_g12_ids[] =3D {
>         0
> };
>=20
>+static const enum intel_step dg2_g10_steppings[] =3D {
>+        [0x0] =3D STEP_A0,
>+        [0x1] =3D STEP_A0,
>+        [0x4] =3D STEP_B0,
>+        [0x8] =3D STEP_C0,
>+};
>+
>+static const enum intel_step dg2_g11_steppings[] =3D {
>+        [0x0] =3D STEP_B0,
>+        [0x4] =3D STEP_C0,
>+        [0x5] =3D STEP_C0,
>+};
>+
>+static const enum intel_step dg2_g12_steppings[] =3D {
>+        [0x0] =3D STEP_C0,
>+        [0x1] =3D STEP_C0,
>+};
>+
> static const struct platform_desc dg2_desc =3D {
>         PLATFORM(DG2),
>         .subplatforms =3D (const struct subplatform_desc[]) {
>-                { INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids },
>-                { INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids },
>-                { INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids },
>+                { INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids,
>+                  STEP_INFO(dg2_g10_steppings) },
>+                { INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids,
>+                  STEP_INFO(dg2_g11_steppings) },
>+                { INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids,
>+                  STEP_INFO(dg2_g12_steppings) },
>                 {},
>         },
>         .info =3D &xe_hpd_display,
>@@ -1261,13 +1399,66 @@ find_subplatform_desc(struct pci_dev *pdev, const =
struct platform_desc *desc)
>         return NULL;
> }
>=20
>+static enum intel_step get_pre_gmdid_step(struct intel_display *display,
>+                                          const struct stepping_desc *mai=
n,
>+                                          const struct stepping_desc *sub=
)
>+{
>+        struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>+        const enum intel_step *map =3D main->map;
>+        int size =3D main->size;
>+        int revision =3D pdev->revision;
>+        enum intel_step step;
>+
>+        /* subplatform stepping info trumps main platform info */
>+        if (sub && sub->map && sub->size) {
>+                map =3D sub->map;
>+                size =3D sub->size;
>+        }
>+
>+        /* not all platforms define steppings, and it's fine */
>+        if (!map || !size)
>+                return STEP_NONE;
>+
>+        if (revision < size && map[revision] !=3D STEP_NONE) {
>+                step =3D map[revision];
>+        } else {
>+                drm_warn(display->drm, "Unknown revision 0x%02x\n", revis=
ion);
>+
>+                /*
>+                 * If we hit a gap in the revision to step map, use the i=
nformation
>+                 * for the next revision.
>+                 *
>+                 * This may be wrong in all sorts of ways, especially if =
the
>+                 * steppings in the array are not monotonically increasin=
g, but
>+                 * it's better than defaulting to 0.
>+                 */
>+                while (revision < size && map[revision] =3D=3D STEP_NONE)
>+                        revision++;
>+
>+                if (revision < size) {
>+                        drm_dbg_kms(display->drm, "Using display stepping=
 for revision 0x%02x\n",
>+                                    revision);
>+                        step =3D map[revision];
>+                } else {
>+                        drm_dbg_kms(display->drm, "Using future display s=
tepping\n");
>+                        step =3D STEP_FUTURE;
>+                }
>+        }
>+
>+        drm_WARN_ON(display->drm, step =3D=3D STEP_NONE);

I believe we can be sure that step !=3D STEP_NONE at this point. Are we
keeping this only to guard against bugs from future changes?

--
Gustavo Sousa

>+
>+        return step;
>+}
>+
> void intel_display_device_probe(struct drm_i915_private *i915)
> {
>+        struct intel_display *display =3D &i915->display;
>         struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>         const struct intel_display_device_info *info;
>         struct intel_display_ip_ver ip_ver =3D {};
>         const struct platform_desc *desc;
>         const struct subplatform_desc *subdesc;
>+        enum intel_step step;
>=20
>         /* Add drm device backpointer as early as possible. */
>         i915->display.drm =3D &i915->drm;
>@@ -1307,13 +1498,25 @@ void intel_display_device_probe(struct drm_i915_pr=
ivate *i915)
>                 DISPLAY_RUNTIME_INFO(i915)->subplatform =3D subdesc->subp=
latform;
>         }
>=20
>-        if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>+        if (ip_ver.ver || ip_ver.rel || ip_ver.step) {
>                 DISPLAY_RUNTIME_INFO(i915)->ip =3D ip_ver;
>+                step =3D STEP_A0 + ip_ver.step;
>+                if (step > STEP_FUTURE) {
>+                        drm_dbg_kms(display->drm, "Using future display s=
tepping\n");
>+                        step =3D STEP_FUTURE;
>+                }
>+        } else {
>+                step =3D get_pre_gmdid_step(display, &desc->step_info,
>+                                          subdesc ? &subdesc->step_info :=
 NULL);
>+        }
>+
>+        DISPLAY_RUNTIME_INFO(i915)->step =3D step;
>=20
>-        drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display versi=
on %u.%02u\n",
>+        drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display versi=
on %u.%02u stepping %s\n",
>                  desc->name, subdesc ? "/" : "", subdesc ? subdesc->name =
: "",
>                  pdev->device, DISPLAY_RUNTIME_INFO(i915)->ip.ver,
>-                 DISPLAY_RUNTIME_INFO(i915)->ip.rel);
>+                 DISPLAY_RUNTIME_INFO(i915)->ip.rel,
>+                 step !=3D STEP_NONE ? intel_step_name(step) : "N/A");
>=20
>         return;
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers=
/gpu/drm/i915/display/intel_display_device.h
>index ccf1710cb9df..4615c3ba60aa 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>@@ -201,8 +201,9 @@ struct intel_display_runtime_info {
>         struct intel_display_ip_ver {
>                 u16 ver;
>                 u16 rel;
>-                u16 step;
>+                u16 step; /* hardware */
>         } ip;
>+        int step; /* symbolic */
>=20
>         u32 rawclk_freq;
>=20
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers=
/gpu/drm/xe/compat-i915-headers/intel_step.h
>index ee3f45b668b9..2cf13a572ab0 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
>@@ -8,6 +8,7 @@
>=20
> #include "xe_step.h"
>=20
>+#define intel_step xe_step
> #define intel_step_name xe_step_name
>=20
> #endif /* __INTEL_STEP_H__ */
>--=20
>2.39.2
>
