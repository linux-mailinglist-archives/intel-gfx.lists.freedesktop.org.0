Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B0496137D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 18:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F0C10E36B;
	Tue, 27 Aug 2024 16:02:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6XcClgb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 280C510E363;
 Tue, 27 Aug 2024 16:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724774556; x=1756310556;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vjcdGa4aU6h8RFzV/hNbDXS2RUY+Q0rt0//xL7uel04=;
 b=M6XcClgbBe+ipgdim0Cv1HbzS201yyC5LTexhrRmtgyLTS7d7iIh2siQ
 IBfG0UvmVs/dahMJKmFi1DHsoTFerWfsFMBzp2/xR8PT84awD0eu516r3
 umE/V/v3ZxAisiF1Lkdrvo8kHEFRuKDbb6PkK0KTc9TvB59c+QRIGxynn
 tbdml7DVTwY3qQuI0YLOjd8di0ywjaCd3Whek+rCk1OYAYg3EOpzBqlye
 pgA/He/elhIzX+CCIg+D4h3WQp6lkRSY9sjwleNggamS1pPxVjzBQS95e
 MF0FaybWd4EyCy3jfwA0GWBsuDM5YZHFlBVOIbGJA/4i5rjV//rFq2DWr Q==;
X-CSE-ConnectionGUID: xpr6BmMiRaiqN3MCBHfm+w==
X-CSE-MsgGUID: otj7u9dnQ16+y/kVAu5aNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="26163659"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="26163659"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 09:02:23 -0700
X-CSE-ConnectionGUID: SO4WfOwjShC2Lc+DY0nt/Q==
X-CSE-MsgGUID: /0OSa54aQjCa+evczeEpSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="67609707"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 09:02:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 09:02:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 09:02:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 09:02:22 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 09:02:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KzSo2cGcadfcSnW3RvoFOBXLcu0p/++DU1ySrwgFBlCHcWw6o7y6Zpa2ml5hxGOQNKjbFFgukAVjO3WZrOWx8pgfTZjlfe+O3ooYn0HTi2CMpfFLqGcZnfMKUZADd6eg3b1C6H7PlLRXAhoNzvzBp7o0hkHBXN0DcfaXcXeVppM0jCXXkE48TmhoaUE5kqAAj4GxXF+DEdz35Xf1m4VT3TbjXik9l/zu4n2t7hYPHuW4uSzDZmGQbLBFVgx3lXmw/gS95XcsziirlnIfWx7IoFmdeMkcW1eRhsB0YNaVGO68zNsAvuCp6ih584iNq+QfbheHSZsBmaJlFFMyIoSwBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TUJs4OO0KlnoSXZMCn5sEHR1+9+Ss/C0xbBocuz/ves=;
 b=YGRJOeXT4vB0+pen0wkWeCyHb/qaVHYyw+tdPiapvgH9IIqXLFDlDzEQLoK1wAn06F5DOyeY8+hVbTkDB/8tWOT8kziSVnVq06S4afXW4Cvmg6JgajnB3DFP1Xfv8bTF0P5pyepQmA2hN2Y6avzcNUdJU0wmjdDSkBpMsxWUApfuda6KW4hDcaj56w/gCm9GciQ5XQ+3fSTEo547YN2Klfy+p03YTX7NkID+iAb2Qb7J4loyIoz9xY2O/CsxSaRnuhmnq62u3EXbt0Kk2fm3WQeIjUUaF/sasxSvmV/r4GecacQP+tzcIKR/N5v30hKHpkgaI5dJmXSWTBF3p+kDmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Tue, 27 Aug
 2024 16:02:18 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.7875.018; Tue, 27 Aug 2024
 16:02:18 +0000
Date: Tue, 27 Aug 2024 16:00:59 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Subject: Re: [PATCH v6 2/2] drm/xe: Align all VRAM scanout buffers to 64k
 physical pages when needed.
Message-ID: <Zs34Ow2COEoXWMOo@DUT025-TGLU.fm.intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
 <20240826170117.327709-3-maarten.lankhorst@linux.intel.com>
 <ZszXzIwntGCQobwy@DUT025-TGLU.fm.intel.com>
 <361abc93-0246-4f21-b235-4e0699682ef3@linux.intel.com>
 <Zs1D93hrqLRxI9SQ@DUT025-TGLU.fm.intel.com>
 <927bdb3b-8372-4d21-b807-0f051832f6d5@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <927bdb3b-8372-4d21-b807-0f051832f6d5@linux.intel.com>
X-ClientProxiedBy: BY3PR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:a03:254::30) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH7PR11MB6007:EE_
X-MS-Office365-Filtering-Correlation-Id: 92d070e3-77eb-4466-e995-08dcc6b1a064
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjZJMHlxSEoycTJHZ0xRVWpGUnNGUC9vL0Y5T0RrUC9vamw5VWZFQUhxODA4?=
 =?utf-8?B?NGlKNStJRmtudnE5RVVWWW9mdm1lSXU0S0w1Q1YwRWZDOStVb3pjV0NPVnZ5?=
 =?utf-8?B?WDcrUGh5clJhU3lmWlVZbi9mTWNaNjNwRmk4SGRvaFgxVk02ekV1RkI0Rklm?=
 =?utf-8?B?dDRLbGJHTkFLejAxUkFhbVdXQkR4ZmRhcDcrdENWT2UrOHJMSWNsa2t5QjZt?=
 =?utf-8?B?cW1QYzA2dTlDeWkyK2Uxa042UUUvVXduQVJtand6V01YOHVRalJPQVJ6NXpW?=
 =?utf-8?B?UEdjVk1FMm9iUGowZ2Q4OEh6ZkxxR2RaOVFUb3lhNytTdVdhM0RraVZ2UU1B?=
 =?utf-8?B?KzVoQjdPdSt2U1ZNNk53Zm9XSElNVXNtSE5OSGg5Q2tmNTNIaXAzM0NXcDEr?=
 =?utf-8?B?Z0tMMUsrM3d2dGV4Y1JNcWFVYXBNYUhibTc5TTNVSEF2SjFUd1lhOXpUTG9T?=
 =?utf-8?B?SGs1MFFtUGhiVi8wUzNHdXFHeWdPZ0RvaG1PUkZDcjFhaWE3Z2pDbWhzV2Zo?=
 =?utf-8?B?VFlldWtpdFBERlI0L3JxUlpURTF0SlMxVGZKK2VpdTVRVmZIZGVEVVBScTNt?=
 =?utf-8?B?VC9xZU9HQzVKMHJyTEFQbWNYSE5LN2xBUlY2eDBFZHczNWhLTGYySmZBY3lG?=
 =?utf-8?B?UlphRlBmRHY2QjlsYnhjZDhtQmdRczN4Snpha3MyMldseGNlVkFlVW9GOGpq?=
 =?utf-8?B?UUl4T0tMUTBTUVNIVHh3OTRCR1FlNzlaV2U0cEtGSENGcXlLcW5nYnJwdTQ1?=
 =?utf-8?B?bHJhWFJMZm52WEZrMlUvMWV1Qmc4eU5Ua1QvSnVxOEdwU3NtMFlmUXNBWFRz?=
 =?utf-8?B?Ny9HYUVWc1V1anlLUFN2NUFrTEYyeFZzV1NxL0UwdUVRTFBrTm1JbXg4d0xx?=
 =?utf-8?B?QjlqTXJDNjNQZUxHVFFkSGlDS1ZwdnFRRjJIYVkyK2RqVnpDbTJOTzRtaHZO?=
 =?utf-8?B?VTRRK0VKUUNCR2k4WE1YNmZ1N1lUQ0ZxeWlKRnJ4ZGNkU2Vnb0lrRW04NDJ1?=
 =?utf-8?B?RCtMdVVjQWVKUVAxVHNIL1ozZmpDcTgvSHgzeDltOGRiRkRmajNkazNReHBI?=
 =?utf-8?B?Y3pJKzM1RzNIVjVvSFFOVHFyalBRNTNzTXgvMWJZaWVwTDJUdU5yNlFzUFFp?=
 =?utf-8?B?K2tac2tVdDNsc1FPN01JL0dveXJPQWxleXpqZUcyVGMzeE5sTE9WcjVsQ2Va?=
 =?utf-8?B?N2QyVUwxMmp4N2hhOWtscjF6Sm9UNDNIbnVhcUFaR0x3M3lqcURJOEEzZ3JH?=
 =?utf-8?B?WlRBeDgvTFBLS2VJUmtycFNlR3Y5VWtzK3FDa1dGMlVkVXNuelN3UmQwcGhp?=
 =?utf-8?B?ZXhXVEJSU2VzWGhZa2xhWjhmWVI4SjVqV1dyM1Z6MHQxN3JTMW9NelR0N04x?=
 =?utf-8?B?V2l1RzUwZGpGamRqZVBDVXd4QjdKeXJaT0M0SzBJcHZ4NUd5N2FxMjk3ZnM4?=
 =?utf-8?B?WVh4ZEJ6b1JHVjVJMzJtTDNYa0E0Ui81Q3JFR1M2OExPMEFCY1YvVnY1VzVS?=
 =?utf-8?B?ZXRtYXBVMTF1ckFyMzJidHFjRjQrVG1QZnQyeEpZUERTRGpxL0xPZzVPbjE1?=
 =?utf-8?B?aWZZdUsvZnJMejVWMTZDSWVGMEtlalpsOC9VM2tyWGVEQTVodHR4cUZoTU5v?=
 =?utf-8?B?cS9FWlpBZFFGUC9HNVlzTlM1ZEdEeHp5UzV5blBTV214aXVxTVF4UnErclZL?=
 =?utf-8?B?RjJ2cnNYRUZ2eUw5T1htbklISWc0ZXpxK0piY2NrdUxSbHQvR0VJSTdKNEIy?=
 =?utf-8?B?NDUvenhiUzg0cnZpb2FMV2dkTXA1K2pmVGlod0Y1NjJ3cmNrZTVZUzBuV1R0?=
 =?utf-8?B?M0tYZTVrNjZ5a2VYay95Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEFYcTRoclY0OGQwUk1XWWNGNko2QnFWU1F5R1A3ZWp4WFR0WjFoTWJ6ZFZM?=
 =?utf-8?B?Y2FETk1lWk5RU1FpS3J5U0krQkxJVEw3ck9KSDBEUktZTFVPWjJOT0gzM1ZE?=
 =?utf-8?B?c2hsY3VQckp2eGpRaGQ2UnRPNDBtUmRtZTQ4UG5nbmorODFEZ1lTeHBnUE9t?=
 =?utf-8?B?ZWY3V0dsbzFZSHBYRVo2MkF4SlFBWm9LRWFkb0lwS0NyWm53akZMT2hGeHZQ?=
 =?utf-8?B?UWtmZ09MRW5UVk5uZzRjWVdPR2hzeU1qbkVTeTdoU3lPM2w1bi9yZGkxMFVS?=
 =?utf-8?B?TFlleUc3RUtWempyN09oT2gzZExCdEVBWEhtS1BqcEFKSjBVcXMwRXNUMFFP?=
 =?utf-8?B?TXlielNvNzVIU1pHSVI0RS9lUGxUbDdvWlN6VXpTODVoQlV6cEg2YSsxVVdK?=
 =?utf-8?B?ZEIwb3VtRG1Wa3Fja2lxN28xR2FkOVYvM2dWSG9FVFFwd29DS0JQQzRuNUpt?=
 =?utf-8?B?N1JLYk1Gb25HZjZMVFArKzBnN2k2M1BMMkovQ2p4V3pHQUpkZFRKUXFaUUc0?=
 =?utf-8?B?dXZQVVhKUkZTU0xGaVlncmFwWndiZTFIREdjOFlaeElyd00yQVpNcDBrRDNv?=
 =?utf-8?B?Z3g4NW1HQVliREN4NUZiUjE4b2Z4SE8wOEk3TFAvTVJweGJwSE1PSVY2WUVp?=
 =?utf-8?B?NDdGbDd5MXdFNFdaN3BISWVvMEErZ1dCYzk0R2o1Q3ZKeG9kczFiTGVhZEk2?=
 =?utf-8?B?Z25FWFh6NDRlNTgyQys1YnZma2N3eFdTY2JZcVJ6NDZkS1hkNURKZVVuTmda?=
 =?utf-8?B?c2t0T0lPY1pkQ2dIbGo2dnBNN1c1V3N0T1lkRlJ6VWQ3d0UvZ2E2a2ZjZlRV?=
 =?utf-8?B?NUpQZjNTU0Z0WXJFZTc3MnhGSUlEemFwSG92cElUamE4c2hUdXI2V2s2TnJE?=
 =?utf-8?B?OTlGZkl0S3JjYkhtSTFtZCtVSy9ZUytjcEZtS0NZblJMZ2hKblVQckJBN1F1?=
 =?utf-8?B?dkE3SVlPaWNKVGk0b1paU2FaWnFqSy83YUVHMndsUFlZUjdBZnVTa2F5dWFC?=
 =?utf-8?B?MVZ0ejkwNERWTEFyRGZqWnBnN0hSalJzZUhoeU1pNFZsL3NsRjREcHB5aEFL?=
 =?utf-8?B?NFI2U0lxd2hLejlPeGxoR1UxUlo3ZCtkbm5zWnVCNnpXSnNtOWFTSzFuaGdJ?=
 =?utf-8?B?WnQ5Rm5HYzA0OTl4cDJxMmRlYnJORTRLZ0RNTktVcnB2a0VRK2ZWdWFFeXZt?=
 =?utf-8?B?TEwyT2YweGxuQlVNN215bnQwWFc2TG9vdFVCQjV3c25lZ1l5eWpQY0MzNHZh?=
 =?utf-8?B?ampodU5KT0VRY3BaYW5aaEVaZ0VtRVd4Y3lGNkhPcXVtamFGUmlQSm1lbVN3?=
 =?utf-8?B?WWhoaEY5OWdWeXFaSXZqVkVCYTZEVXlBVmhGZDhVMzZtSTZMQ0pMVHFSWUtB?=
 =?utf-8?B?MFlTbTlhQ3BNVVpzMCt3cTBYOG1TaVZKbFkzNzZsT1VVYml3VW9acmpLamFy?=
 =?utf-8?B?bmIybkhNV29Ka2Z4UXJ3WGQvQnNpejJCYjlrZ3ZZRzRWY2tYRUR4TFREb3M3?=
 =?utf-8?B?cTIxbWhGU2dNVWx4ZHFmd2JnYW40bUJKL2xCTE5GcXdrc1JucHNFQ2htSktZ?=
 =?utf-8?B?eko1WmprZ0dhQ1dmVUhIaUtQMi9GNWVER3l3WjJJVG1KcDczNHcxbkVaclVM?=
 =?utf-8?B?UnJvaHNzaWh1U016azdZZGFqa1dqNCtBbk5aOXh6TGNTY0NsTzN1ajBPbFlG?=
 =?utf-8?B?bXJiU2NZdDFtZHlQd3dDRmNXWnpxNzFtcEdZV0FCbC9nWFRRYmxQelpLTEVq?=
 =?utf-8?B?ZWlxd281WmdZeWc5Rk9pTkIwYTR3aURNczA3YUhaTWpqcnF0dXYwOENGK1dm?=
 =?utf-8?B?R0VpcUhHMlJLMm1XcUtKank2TGN3Mmc0SVl5RlNBSzRrOXErNDlFMHEyR1BM?=
 =?utf-8?B?M3lTdTlER3F1NjlqckZUdEMwa010aEdZczBWRE5seTliUDVZRTB1Q2cwajN4?=
 =?utf-8?B?aWFrZXF6aDg1VVErSTF2NS96TW1kKzcrNlI1QkRqdklPMVArUW5TcmZscEpz?=
 =?utf-8?B?Z3QvUklsc1BMSTloWC9CV0wrekJ3L1JZOXQ0NnZnY2UrSzZXMGh3by94NmdF?=
 =?utf-8?B?UHdhWjB0OGlwK0xLcTNQN3BFbjlGOXhUVmNwZU0rK1g2KzRpRy85b2xZaHcx?=
 =?utf-8?B?cytRQW4rOGtwakdHL2pzc3pKRy9NcXVrOUVsZm9iVTlJRUkrMnpwYkUyV3d5?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92d070e3-77eb-4466-e995-08dcc6b1a064
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 16:02:18.4058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XM2k8dGsldxzwS6Gi3o5PBFxbL9iXuQLGeYzFXn1q9HOpGmg68TbA+L4x+8NseZfSkqUmesqs+dZD1ZNAboNaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
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

On Tue, Aug 27, 2024 at 08:43:36AM +0200, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2024-08-27 kl. 05:11, skrev Matthew Brost:
> > On Mon, Aug 26, 2024 at 09:42:54PM +0200, Maarten Lankhorst wrote:
> >> Hey,
> >>
> >> Den 2024-08-26 kl. 21:30, skrev Matthew Brost:
> >>> On Mon, Aug 26, 2024 at 07:01:16PM +0200, Maarten Lankhorst wrote:
> >>>> For CCS formats on affected platforms, CCS can be used freely, but
> >>>> display engine requires a multiple of 64k physical pages. No other
> >>>> changes are needed.
> >>>>
> >>>> At the BO creation time we don't know if the BO will be used for CCS
> >>>> or not. If the scanout flag is set, and the BO is a multiple of 64k,
> >>>> we take the safe route and force the physical alignment of 64k pages.
> >>>>
> >>>> If the BO is not a multiple of 64k, or the scanout flag was not set
> >>>> at BO creation, we reject it for usage as CCS in display. The physical
> >>>> pages are likely not aligned correctly, and this will cause corruption
> >>>> when used as FB.
> >>>>
> >>>> The scanout flag and size being a multiple of 64k are used together
> >>>> to enforce 64k physical placement.
> >>>>
> >>>> VM_BIND is completely unaffected, mappings to a VM can still be aligned
> >>>> to 4k, just like for normal buffers.
> >>>>
> >>>> Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> >>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >>>> Cc: Matthew Auld <matthew.auld@intel.com>
> >>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >>>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> >>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >>>> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> >>>> ---
> >>>>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  9 +++++++++
> >>>>  drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
> >>>>  drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
> >>>>  3 files changed, 26 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> >>>> index f835492f73fb4..63ce97cc4cfef 100644
> >>>> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> >>>> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> >>>> @@ -7,6 +7,7 @@
> >>>>  #include <drm/ttm/ttm_bo.h>
> >>>>  
> >>>>  #include "intel_display_types.h"
> >>>> +#include "intel_fb.h"
> >>>>  #include "intel_fb_bo.h"
> >>>>  #include "xe_bo.h"
> >>>>  
> >>>> @@ -28,6 +29,14 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
> >>>>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
> >>>>  	int ret;
> >>>>  
> >>>> +	/*
> >>>> +	 * Some modifiers require physical alignment of 64KiB VRAM pages;
> >>>> +	 * require that the BO in those cases is created correctly.
> >>>> +	 */
> >>>> +	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys(mode_cmd->modifier[0]) &&
> >>>> +			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
> >>>> +		return -EINVAL;
> >>>
> >>> I don't think this is correct use of this macro as XE_BO_FLAG_NEEDS_64K
> >>> is an internal flag we set and typically this macro is used to santize
> >>> user input. An assert here or WARN would make more sense.
> >> Ideally we'd use 'is bo created as scanout', but that flag can be set by fb_init too, so if the BO was used for normal 4-tiled before, then as CCS it would pass when it wouldn't be valid.
> >>
> >> I could change it to bo_created_with_scanout_flag_on_64k_platform inline, but I doubt that's more readable. :)
> >>
> > 
> > Not trying to block the patch and really don't know anything about
> > display but still think XE_IOCTL_DBG should replaced by either an
> > assert or WARN (or Xe flavor of warn). Kinda pedantic but we really are
> > trying hard to uniformly use these types of macros and this just doesn't
> > look correct.
> 
> mode_cmd->modifier[0] is passed from userspace without validation, and this function is called very early on in fb creation. Anything more than XE_IOCTL_DBG would be invalid here.

Ok, that makes this usage more clear then. Fine with it as is then. Sorry for the noise.

Matt
