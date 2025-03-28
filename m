Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E9BA74762
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 11:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B7E210E9BD;
	Fri, 28 Mar 2025 10:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hBSfCk/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F7810E9BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 10:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743156522; x=1774692522;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=mUTINH0SLjZlN1WIxRlaxH83viiC5IHn+9JTHC6UBBU=;
 b=hBSfCk/+8/Q2k/E4PRU6JT/auec4eYBXfd6hqq7RY06XjMad8knhZjxW
 zjqWAuoklW0F9Y8QBgxTBnuxwe9D4n9zrmZPQtGOsE65aYklyf3WNEMWR
 cSs0XyDPy8x8eNI+P07tP8mvDginIEber1PumZf7jI0iP0kSR/GIx9Pao
 7QCpw6E9Ce/L2Qiw6JdkBaZ3OH9HsIQSbUiNLTa6qAaNRw/xORvQDEMjI
 BQuHJ8HsIVsnsp3s0VtmwSnmi/Dl1x9/veRuwjDXGjC4KZ7Q7n+Q9pN6Z
 xcuY00h3mUKpHf7920RxZGfa7OwwzR84t8bJqhaltdgOfKrUhW2nMjUMq g==;
X-CSE-ConnectionGUID: 5PT+9MxLSuygcXnsZTaUOw==
X-CSE-MsgGUID: /BIrA7hBT/2ctXWf/UiBZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55515108"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="55515108"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 03:08:42 -0700
X-CSE-ConnectionGUID: DXgzemWmSs+o+h49HHoWjQ==
X-CSE-MsgGUID: zjRd/jodTge5AS8gSl3zRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="156340584"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2025 03:08:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Mar 2025 03:08:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 03:08:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 03:08:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N1ERpweWg8RhAR4w9/dBkdj4XvMjY4ITlMkJ0VNjkITy1C74rpcdNIYguLntIQos43tEeQEjksLLkoxAKWfyUyUwf4nc2lxs+L2s+QFd4I1ZVGfiUakpnUU0poIv5rMxDAC48Wft4LXQEnEDAWvLlxjWIVYyBWtpvzn8rvxr5vnxwWWj8zZv8fI49teGgau25A5XvV+Y4gZygCrv2yGycWk6B21Wpx04CTD0cv0VeiMbMJ8/efkZvrvgo1PSym39boPQ6rsfokG1ANi4lVQ7yyZk0n+jQTFF2mwmrSjgrelsWrI3xgnEzVorqZBcJdSWyZ6QaUzbpJnECaOi7m0+Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RZ+P/gZMQNwMskKVRCdwGmPc8ywjTaEjhnP8AzYH3bo=;
 b=VYN+oohibYWt7MX1UwVNIKmTWCfdm+QGnoSjkuq+wPvkRXX5PI8xXzyMOB4pMpGdHt8B5KWXwMfMXM+pZQbFIyQRSnEySn+2lk6F+j00NwjjIICvR47QkU/ZfnP5y/ZU6isVHHz7l0jlMbvFmQmxnVzGiG+cNJdiKQA/tTkdq/4BIfVipFza09PPpdCbsXkvAdm+BhHRME+idTD2UPeOmI0DJMoohc+hXp5LpCkQMn1aVFrg40Ck6AdiZq4kVbyvOtnrqyBhceLyt/nV43T51y/Gb/l6FEMYCFFgDuaY0D1918pNKihBNOf2fjYQhTEl5ocD5E8VRel1xQEBmSVnVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB6542.namprd11.prod.outlook.com (2603:10b6:8:d2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 10:07:58 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 10:07:58 +0000
Date: Fri, 28 Mar 2025 10:07:48 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2] drm/i915/selftest: allow larger memory allocation
Message-ID: <54iahno74po5rqlktztmthbhe6kwepwjad7uecj24umlboi66w@vzj63adx7v4j>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <2vie3dumx3ajb7lwhiotxs4wj6zcr2fq6on3ebd2vsm2qb3k6l@s5uny4fry4gr>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2vie3dumx3ajb7lwhiotxs4wj6zcr2fq6on3ebd2vsm2qb3k6l@s5uny4fry4gr>
X-ClientProxiedBy: ZR0P278CA0074.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::7) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB6542:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f01a363-44a4-4237-6143-08dd6de06a8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VGswd0d2RzZwNE5rRkNuZzBZa1REb1VBS1IrbWJTc2RPVUpkd1d5YVp4K1Vw?=
 =?utf-8?B?ZDdTeVF0b3NmSDFmd1ZSeDlJSTExRTV0K00yOW55RVU2VGZVYVVZbHA2Z3NW?=
 =?utf-8?B?UU9KejVqUWJlOVNjeTNGeFJsa1JLRWVOckNrbDIwaTllRG93alhyL2FPbXdI?=
 =?utf-8?B?SE1hMTlCMVBySnJ3SWt6VjF0WlNValZFVlZ5UXhPRTh5djlUcGJ1YmhPNFJD?=
 =?utf-8?B?OEQ2Zmh2ZTlXR2x2NW4zYWR2SkhjRldzRkhYYWpPdUVDMVQ2V1lYYXV0bXc1?=
 =?utf-8?B?b0RsTjhLZGdMeVRBN2Z3WHZkK1RNSFNuL3V5S0RzcGszK1IvZlhHd2NZWUFq?=
 =?utf-8?B?b2NJdHY2NUlqZysvVlFORHg3c0ExcElUdlduS1BCQW5vZ2JRTHljRW9vbGJl?=
 =?utf-8?B?UDY1blA1S2VqU2VvUEpER0RnZzRDcmxMa2FaSXljYXdsVmZ0QXpzNE9tbmsx?=
 =?utf-8?B?MDVGeEQ0dmpFb241R08rZEU0V2hHY05oWUkxelRFWVAwV0VQNnZWdVNEYmZI?=
 =?utf-8?B?VG91YkwyamVDSEN4cmtpL3N1UVdTUHh1UzRnZ25PWXNyTDNEMUJ5TmN6cG92?=
 =?utf-8?B?VFlkZTcwV0RrMGVDOWhVaWNtRndnMTVjblBobVpwbktTOC9Cb0VPQW5yWnYv?=
 =?utf-8?B?c2Z2WXk4b2p1UERmNHZGaTdvYzR0NldJRGVYWHN1cFhubDRLMVBaYVZPMk9h?=
 =?utf-8?B?cUtpWE1RWFZPbjVlOUcrN0R6cjdaYW11RTRUR2RDNkNwREs3TEV1ckgvVldG?=
 =?utf-8?B?N3Q4TGR0dXVhdjRidkpNS2NSdVowY05ER3NMR0ErQ2pjckI5NDcvZ3BiN2dK?=
 =?utf-8?B?cHJEaWxVa0tvRnFTS01aZCtVOGFvRVpVUzlqRjR3eXZ5dnFXOURrSmNqclVs?=
 =?utf-8?B?eFhWaGU2S2hKWEpqMTNjbHB4T2hEYlhSakxQZytyR3hqRlhpRkZCWkFIdFJ6?=
 =?utf-8?B?ZUdmRU1qY0Q4L1dlTzhvUi9xcXZUVksxVG92SzlMVFJ3UGpyaWVCN0w2dVg0?=
 =?utf-8?B?ejM5ZDIxQ0E0VGhrWGF3M215Y2pDRHBlcGFid2gycUM4b3lhR0t4MzEzZFc5?=
 =?utf-8?B?bENQbXcxd24vbVB1TGhjK0w3dzVOSDJPclZNajh0bzE1aXdCcDFHNzdYc0hU?=
 =?utf-8?B?NUpLaWZhNEhneVdzcnBnVHhXMzU3UFppdnlCT3h6QTNWNXhFWVhqM2tmRnJa?=
 =?utf-8?B?d3dlSVh6bEZYWnhHWVdiRVBqMDBaWEoyTktvWXl4SkdzN1p0dVhtRnRiUnNu?=
 =?utf-8?B?NjBCUDBFRzZ5TDI5enRDZUxZeUF3bkIzdXpHUmRmZVFrSTdiUGtGOTJXQ1lq?=
 =?utf-8?B?eE1RSnVtd254Wk9iQllOaHpHLzRPOWZjU0FkcTdKWnBiek9sV0w0V0xOVDdv?=
 =?utf-8?B?WFMvV1EwUVlwdkZ6Y0w1VWhsUksyai8zZWNTVnlFWGZaMENIdU5aTjFhWklk?=
 =?utf-8?B?UXJpZlBMUnVHZjRMbnJIWHJGZnpsdnRad242dEJpcDRldGxHUmdjV21DMDBz?=
 =?utf-8?B?TVhpL0E4Y0F3ZnQ1Q2NtNzRVSU94M3hSc2Ixd3FVS05WbUtBYUhqS3k5TllG?=
 =?utf-8?B?WVFMVHZzaEMyc2dqeWdaaUJtcFJnY3o5RWc5ak5SNzhmd2hTc2RIczRTbFJC?=
 =?utf-8?B?bTJqSWlkV25sQktiUmFSa1JjcVFqWXhVVlVwd0daTU84MW5TOVZSdGI2L1hG?=
 =?utf-8?B?M28wUFAzblhxWk0rMmpJYm1naWdkRVFmREZ6WGJVRkxEMGp4S3ZxSUR6d3li?=
 =?utf-8?B?NUtPeHh0aWgwaTFqSVlKb3E1eUw2TkFlRmdVblcyQkxKSnphYkdnaG9JWEZv?=
 =?utf-8?B?NVVOd2Nad2Vkb3FuOVdDdEtxSmlDczJkSTF6TlhqZC9pMkxMcnVEbk9GMm54?=
 =?utf-8?Q?buI4veXVA8Pjw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aG0rVklCdjNhNGJENlYyV2wrbHJuMVdoRXByQTVqcGlDeVNMaEZzL3k3aDhF?=
 =?utf-8?B?ZGhOenBpL3JRWldCUWg0NTFXMzFLVnN0UFBXOGxIMXNjRCtZMElyaytVWGN6?=
 =?utf-8?B?cDZGUVE3SjcrVmxJbVZwNUU4RFBhL3NBSUtpOG1CQktPTmdacTdXM1htOXRC?=
 =?utf-8?B?NkpMVGVTQXQwWXNQZnIzQlNIU0lqWllDcnkxQjVLWFd3d1puYlU5Qk5nL085?=
 =?utf-8?B?K3IwWXN3MEIzYVpLb1ArbVZydnlEZitDbzV4SEVxM1VRWU9LaWlyWUlFcnhx?=
 =?utf-8?B?ZFNQMlFUUmJ1akFzT2drMmlpYUpqOHFPUjJXOHhBN29SVTJsYUlyUHduTUtP?=
 =?utf-8?B?MS9JMzc4d2oyNHlXN0s2SFNTM2VxVlBrb2tEaWV3cVhNczM1WjJNcFNlanNV?=
 =?utf-8?B?c2xQazYzb0dvQ1hUZStBUHNSd2dIRHFBUGt3QUdJamUzQXJNVjhJRnd5Nlo3?=
 =?utf-8?B?ZnJveSs5dmR6OTdRRVAyZGNGYjZEUlBkcDJrMURjTHRWamdHT2xRQ1pJcS80?=
 =?utf-8?B?dlpuamVTbzdkbUFQRU04NnhwbThvZ0NKdEx4RUZhUENvSVZMTmlqUVdYd0FF?=
 =?utf-8?B?NG5FR0p4VGlnUG41Y1FTOXBRdGtWeDNHbCt1VzFuZzJUZWYybWhnWU9BQ1No?=
 =?utf-8?B?T2hJR2RtbmNwRys4ZE9xSkN4SnYzRFFCajJLek5WZWtIVUgvLzc2SzhFMndq?=
 =?utf-8?B?cWFFem0vR1JIRnJ1VXNpNzVDY29Md3pjK0laOFQ2Wk5rOENHOFJ6dUJZUnpJ?=
 =?utf-8?B?TkVRNzl3SnBNT0JJajlnWk42SU5vVWo0SjZhSkluS3drdFVDakI1QmxJSVVG?=
 =?utf-8?B?Z0lwQzhxc1JCSFNaamtWTi9lZkg2YUg1UXpFNHRjMSsyRVNOdStPNXpVaGlt?=
 =?utf-8?B?UXhBWWVOSC8vUnRTS1NFTGlFUWdCTGJabGZsVXlKMmRRL2JOUzFVWjFhWmtN?=
 =?utf-8?B?WXF5Mk16NFlRaGxJMFl1b3FCb3NhajlnZGN0TkMyN2VyTWRRRWFVZUJwYVRR?=
 =?utf-8?B?MVpPT056YnI5RGdZY1B4ejR0TEVGcnlmeXl3a0t2THBLMktxK043UUR5MDZp?=
 =?utf-8?B?Vm1ZYmt3eEdId3dGSklsN1hFaUdUTWI3Yys3MkZnODlrdXc2dmdtQjUySGg1?=
 =?utf-8?B?QVM1dGlHTnFhQ3FXY0ZmR08vU2E2WVV1QS9rVmRnNmFXQ2s2YmpkcDQ4TTRq?=
 =?utf-8?B?bDdrVG9YRmtXS25rdGFFeDh0RHdWWDhtYWtLelJ4dlRKcmpiMEpXMnlaRTdr?=
 =?utf-8?B?TjByT1JMdmNxbEs1T1FiRHl0L2pvWE00aTdPY01lbFdUc0t2cXMydm5zYjNz?=
 =?utf-8?B?YWM4NldXZUVlcWhBc0k4TUxMcnE3SzY1MFpId1JJbUJzdnZ3ODhGdTdGQ29G?=
 =?utf-8?B?dG9VWTh1NzhYbTV2T3VmY3R4Y2lNTXBJOXJiZmF3NFlnU2xRMG5pZ2dDc0Vl?=
 =?utf-8?B?NHdpSEJURmx3U0hmTEhkT3BSWkFtV00rR3NiU1l2RU5OMHdTcCtTeDluZHEv?=
 =?utf-8?B?V2xEUVgrWUR2WGtVNEEwT2tyMzlOVWV4ZFdhdzRjL2IxMkZGeGJsMHRhZ2M1?=
 =?utf-8?B?cUJTb20zNnFDVld0MFErbVpvZWUxcnBidW1LYk85NXltRVJ5Rmo5NWtMZU1t?=
 =?utf-8?B?ZThTWDV1UGE1cFN4UklyRmJneHN6SHdueTBUSjJKTjhRazB1NnMvcjBydjU4?=
 =?utf-8?B?QmQ5V2MvYzB5YmdtdTRqSXpJaDhlcWxodlhOcHVQN0dnaGRRZlREZ2lDRW5T?=
 =?utf-8?B?NDVEN0h6blFKSGRIVGxrYnlkVFFWNXYrQ2ZMWjF1eCtjdTVMZlhicGNqOVdV?=
 =?utf-8?B?WnZoTXZkTFlnaWg5Z2o3MXRUK2RSdFg2QUFzVFVoQTlzS0dOSkkwc0Qxdnpw?=
 =?utf-8?B?OVBFeFV6a3JlajAvQlRxMkR6ejVkc0tDK3dwaXo4elkzNmVJTTNNTUppVDlD?=
 =?utf-8?B?WGlBQUhvSlpmREcxYk9VTlhzNklOQlhyTS8vRXBncG1oSTNiTW9hcThmaER3?=
 =?utf-8?B?dm9HUEdCUGt0eFdYcnhnUWJBbTBscmd3Uk9SMGFkT2xTQjArQTh5TDV1a2RF?=
 =?utf-8?B?cG8yc05LeHNsY05ndGxNRjhGNmJ5RWdhMFVDNHA1TmpiSG43VlZHSDljTksv?=
 =?utf-8?B?Rkh6VDF4NnVJbDE5RmF2cjRHMWlxMHZLWDVIa3E3S2ZxVEV5dUx5Q21Yb1dC?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f01a363-44a4-4237-6143-08dd6de06a8e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 10:07:58.6030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /4YFzflvcsLIszHxdLorIyKucDITIIJU3Y5/pLs50Lhs2thVyzfIYivgw/i5ljkk2bfzoEbWb2dlAw5LZBaf9vm1mFMip+vKWLJpP3bKVVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6542
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

Hi Mikołaj,

> Due to changes in allocator, the size of the allocation for
> contiguous region is not rounded up to a power-of-two and
> instead allocated as is. Thus, change the part of test that
> expected the allocation to fail.
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> ---
> v1 -> v2:
> - Added negative test for too large allocation

I see that you kept the rounding in determining the sizes :)

LGTM: Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Best Regards,
Krzysztof
