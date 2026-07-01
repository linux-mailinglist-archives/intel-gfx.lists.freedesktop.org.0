Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZEg4BrY/RWp29QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:26:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE896EFC53
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:26:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JjHAoT8Y;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4892710F00B;
	Wed,  1 Jul 2026 16:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F74910F00B;
 Wed,  1 Jul 2026 16:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782923187; x=1814459187;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=saLpqj1rrVW4OFRHUdxA/FXvWl7AElgtaHeefEwo0kw=;
 b=JjHAoT8YMWUcPvPjWsbaWFXysTRxu3zfW+G+3Uk4V97dxk3+nnCL6rlh
 LmnozcTc6MAig4iao5NyzksMmdP8RTXemLBFn5CnDnnWj7OqsaT1e3Ntt
 OaOsPIQiIqiUNLA7FsxYRnbqUcv8veQxbTn2wHgc9L6pIeWJ1tfEpS+Xr
 CNtQfnlpBHJZlHVQ2h1GkFSNYTNnFm6ZH/rxHI3CNHA/zo20abRuuP9r6
 snenYAe8zgjXPdqKqyeS4NHs6mlyUHM52cfPn3PbOT+OVc02y64bw69O8
 rtoASNu6uOktRJ697gVPa6JJX1C7r9hJVJCbTrFEn/TxlWCwEbvTScRgR g==;
X-CSE-ConnectionGUID: O7MKT/qvQkyGeCAcb9oFVQ==
X-CSE-MsgGUID: l6PLhh0TRuuhjZfpiAxO4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="101087507"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="101087507"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:26:27 -0700
X-CSE-ConnectionGUID: Z1EZmnkYThizPyDnzP6BFA==
X-CSE-MsgGUID: 2NNP9XV6Tna0ndsFDnk1KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="252187117"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:26:27 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:26:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 09:26:26 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:26:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=as+giOIZ6xkDPCUV04eYNkoGAjYSTgRpguNBeHydL7ZJFXQW9AVHJ3KQX759PgGOfKqYB3PJbx5rNw2gCuUabGm4r8y3bUONPoGzB4GUdc1SyaqoxjnauftDwUe0gREhwuBB0jvCeQfQ6hndjZ92Q+dL9EQFu+X7YghojXw/1e+VCIJPQinakBpb46fILQMIOAgAOMKc9h2GbHcWBJhtrfdyQD9udJaiBWX5WcrNSj2/NGEloK6pV5LIsnv+i31oTv2S4GePLMdFlaOLI9oG3CmxK0ceW9gWmonIayxXzzp5uG07cGA7rAqyRv1nsnMn2/xRzIJzNLXV8yz22ReHNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kihB0ax5KblsXf7e8oXMj/agdSup0YmVrFS35GvJuOU=;
 b=gypn2YCfVOuFWWOLgL0LSzDtHXXMUL0WEdp4lg9/dL65LPJoMz8OmSO7y2py5+cM81nKSDbfmpzy8UHY3HrsOhSQf2b1EoGWce4nHy7dk5eZu7F0u1yGac4DdqEH/WpNLMLTVDCT/va7S8XfSC/ghBwYF77DNBwcc+eoeUJ6xn4ufLvW6L7zeQjZDk9RwCnUYHMoU5R1TZfSAOAhS/V9TFQc3NZqEMhYgkTIt9HamQhiHTq/q49keIr5JlCa/JOepYMaStIEzT8dhtIZ8iXx9N5oemEUSXcSRtTfm/qIqpheGVfzNqAu6yBO9o1Drnqvqf5KKUpH2GWCSQvAO6fIiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by DS0PR11MB7560.namprd11.prod.outlook.com (2603:10b6:8:14b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 1 Jul
 2026 16:26:23 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 16:26:23 +0000
Message-ID: <c5b413d9-2ef7-49f7-9712-0d3401a07850@intel.com>
Date: Wed, 1 Jul 2026 21:56:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] drm/i915/cursor: Add helper to update cursor plane
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-3-nemesa.garg@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260608062629.820477-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::14) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|DS0PR11MB7560:EE_
X-MS-Office365-Filtering-Correlation-Id: 223e7c5a-3f25-476a-4540-08ded78d7d19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|376014|366016|56012099006|11063799006|18002099003|22082099003|4143699003;
X-Microsoft-Antispam-Message-Info: nIoXH7BxjDFwoo9PKIqH5zJThLrOQBShFd9MV3sliexi8cgEbDgHPxkq8f+EZg3jBemmzQm3FVug+8axtcvBLbLVEa162TJLcwUSYJi7uDbPujImzVmtFmEa0jhfJ2Hx4kkISpTGwzCcXm9YPytK2wGtypho8JjzqomrbNn9dnp9NLFlz7WWJ0n8ppHhS/c3g9Dqmn6sUp9jpeqES/eUeegK0fTwPxZstpZLyMBN198BrpfkB95vuakaD9tsCgNTptfjzyuONxqwIuDKLNsugFTfNoXaBo0fTRj6E2uCCCHj2+ai2xLvneUEwdvDWorEZD6LT+EICpkUZf7EG/7kZntgJ7kOeBgqii/eh0O67IfPSGqk6yErNPk3xPuAffNpJUUHyt5ooY4tIW5FrO3mv5tvtTFLEnlyox2eKorLoZ15SuShN4C/zE0uPCTj8JqF6q4FWnObnLNfNPEo/OjL84fJzKymwWFzm4AipRN0tUFCGgo8Fc5CoRJdorQaxO8y/qmV3p/oPcYU7E8rBN3CIihy7aekzmAvyb/DVn+rNJI4ii+3vFh6JJvJZGa8/BgSzprhreJ9Qse/wcCRt9ZrOcSixg4lzwz9z4Tnr86d8wY5h3YMmSY7v2U8ShOHDKoC29lHJccO8jypvWCYQX56OA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(376014)(366016)(56012099006)(11063799006)(18002099003)(22082099003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmR6UU1LeUlOckZuOUtFRTNMYVNPMGdTeGNzVHF5aWFKZ1J5WnpXWVduR2xl?=
 =?utf-8?B?cVZVcDRoVjhUbVVUZHdTZGRpWUJraU04RWlKdHgvaDNSWXRLZ2NGcHJvWmxl?=
 =?utf-8?B?UW1XOVZOMitrTXlOeThoK3lQc05TYlpZS1ZPaldnNTZ5N29VLzNBZnE3Mys3?=
 =?utf-8?B?SmhibjJuT3U5SVRaSHQ5cTVzckJZY29vd2JWTCs4Uk1lZUQ1N3lRSWp1eXNQ?=
 =?utf-8?B?NElhMDAwNHczeXFva0xNMmFTVWhhQzFac2ZXTkhwV1lralpteEduY25QK3lZ?=
 =?utf-8?B?MURYWHUzQVVVenV2Q2JiclVhbEtUbXFoaGN3bE9SRHJTamZGNlU0Z0NsckRL?=
 =?utf-8?B?SGFYNWtDVUlpNncyY2FHUmRpLzNPelNNcldtMzZvbUtnRDJNNFl3ci9PK2Y5?=
 =?utf-8?B?MEJIdUNCWGJoQlhCOWlOazlheUgwblRZWnA4K3JqQmZCWWRlVytkN3VnWE1M?=
 =?utf-8?B?bnlIblFZdHRLcEFTcVFReXZtRDF2QW4zTFZIeENVZytMY081cWZaSkVoVnZn?=
 =?utf-8?B?aHNZNHB4azlGclJHMXFHUTU5M0JSS0ZDNGFPUDd0Q0RDalVmcmEycUEwY25J?=
 =?utf-8?B?Sy9IOVE0WXhIcWFlclYwMmhtaDBnQURiWDNkV3BEUnhNNm43SUpyYTN6NlNs?=
 =?utf-8?B?QStTeFpHdFJSY2hzdys1KzdLODE2NW5hQVp3dVBFdGtUYyttOEU0ViticVRv?=
 =?utf-8?B?SmkrNXhqUFErdTNhTGJoZkVJS3RGTkhyelNzMnl1Ukg2czRINkQ4QytKbDBh?=
 =?utf-8?B?empMNEx1SklFSzRhUmRzc3FrdEl1SlhOcU5sZUptNDJTRnZGejlPVnhja0Vo?=
 =?utf-8?B?ZjhFMDRpZDVPQ2grZEdhRXN4OW04UWJaa3FjT0xSei94TmtMS1R5SmVtQnM3?=
 =?utf-8?B?WUFsbU9GTTRrN3hGMjQydFdYaVRZNktxMk1YaWJLdjlma21hT25BaXNldW1P?=
 =?utf-8?B?ZlpBQXFDbmtWWDN3ck54RmtrVTRJbVNpQzB6b2U5UUVWUEVTS2pNVXFuek4z?=
 =?utf-8?B?bCt0UmJlN0tCbEJqcGpuVHBYRGFuV1hHQk0xZFZ4MEwwd3hRYXNOL1hGZFh6?=
 =?utf-8?B?UFFIWUN4TVhaRnlxenREYTRXa01nNThIM25oNDRpVm9qVUUvaVVHZDMzSFd5?=
 =?utf-8?B?RHNwR0lmeU9vZmpUMFZoSUxQMmxxUzhYelA2bVF2TWl2b2l4OEpyckZ3czlL?=
 =?utf-8?B?RmF3ZnJIMWluWmQyaENFdGdzcTB0Mi90aTBPM2REYVh2djZkYmFnUGRqc0Nz?=
 =?utf-8?B?NWtLSXVjR2ZDbllCYXA1alhjRTJwRjVNWVlWaVJrZkEyaFBpa2I1UTZqSlZh?=
 =?utf-8?B?d2NhYW81aEVnSXhwaDVDeFJ2K3JaVXhvNko1dTBwM29BdmRESzBia09DeUFM?=
 =?utf-8?B?dW4rZ3pPNWt5YktiaENOUnRJUUcyNFJJRGNyUnE2eVBwNnMxTkRtL3FCUHpM?=
 =?utf-8?B?ek1FQllZUndqZi9SMGhBc1BhMHRvZDVib2ltQkRjYmI1Q3dGRVlOcmtTS281?=
 =?utf-8?B?eFR0M0RQbk1NZXc2eURUb3ZsVDhmWStHWFRlK2xtOGpReEwwN29QWlhRRFBw?=
 =?utf-8?B?NzVwYmU3dDBUTDdlcW9BY2FnSW1SbzJlZk1LTDFRYWNHeWZYcFAvckIyZ2Fo?=
 =?utf-8?B?aUVaenZoWjkwVjNuNjV1Q0xaeStEWVJKUytNbklrZFBOL0VnRUlsZTEyakJC?=
 =?utf-8?B?ZnpkdUZqWFUzdTEwYStzWlVvYk44YUEvY1U0U2UxZ3I3VW5tL29YMmxPUHBS?=
 =?utf-8?B?ZEVsdEUrTXNBb1plQnBQQ2xXTHk2Y3ptWXlSUzg5UGVvMEhoTkxQN1R2Vm40?=
 =?utf-8?B?OTdwZWpwTEZGQ1Era0FYdWx5N2gyU1A3V3ZlRktLeUpONGRDNm1zWTFTdTUv?=
 =?utf-8?B?WkJtNTFtWC9NczdGLzQ5NnBIYUNXMVZEaEs2M3ZhZXRQbTRsMkVhZlczWkpE?=
 =?utf-8?B?MzkxaDZUdDNmbUl3UytRQnJlMUZCa3Y2ZW43M1FHTDhsa2hhbVQ3L3VGZTdG?=
 =?utf-8?B?eU1KemY3alJGZFpHVjdBbFdRL0w1Zm0yRWxoVDRBT3IwQWtlQU5Qc1RZek5V?=
 =?utf-8?B?MlBiK1NSdk5MZ1c1R2RhUnNyUmFHUFlERmt6TU96SUVET1lKa2E5c1c2Y29C?=
 =?utf-8?B?UlN4clZnRUdCT09tdFNOeGRxN2hwR1hZeXJaaGJqU1VBR0VXcjIxUGF2ZkxR?=
 =?utf-8?B?WmpydlRZT3BkbDc3WE9Bb3JoVWtZU1N3d044ZVVVeGtCbmtWdUw2dHN1NGVu?=
 =?utf-8?B?bExCY1RpcFlscWt5ZkNKZjJrUGJGdUViZ2FIa01MTUU1Yzlsc0NkZC9LUlFy?=
 =?utf-8?B?a280WHhFMTRJWVpOQ05UUktWY2JuMHBENEhQaXFZbkw5dEpBYTlmaW5rdkdv?=
 =?utf-8?Q?OGM//xImvsTEaca8=3D?=
X-Exchange-RoutingPolicyChecked: sRivof5UwzvR6J9YMG5G1kBJw7o2+JKxWyeVepI1ltSWCpiOpHY6LUDfcIBL8PVVl2iYHjQDdmqFSjRcsqvxELicA2l4e+LwbrZRumnyJJNt1//pZEo7ocdnEOTcd0fEwAO3O38E+AlOR2vW2nMKxjTy9WXUYLl5nK3JFndqt/OOCPkhx2hQkCvETCgItSbQV66Zm2Q0GEQMIZE/Zvbs4GkgHXKJHHR0NTPs8RAkG6g7r0zEumVA+t9uPQ2RQdbE2Yec1cRIH7vOkKgRZqUX2MRuN4UcAiu8l1/YW0DQvtwaLyYQGOD46f2/0khKSxc+T+Xz4oaM0g8gPzj1SeOtGA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 223e7c5a-3f25-476a-4540-08ded78d7d19
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 16:26:22.9687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K+4A8WcF/xQVEdB0c4JaG+cJtWj0MFE4qWotw50lcCCNyoyBqFx/yNUTcz37oN/mvcDLd+twJHhE2zrbFS2iWDplBvCWWwPpVrzALTqSSTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7560
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADE896EFC53



On 6/8/2026 11:56 AM, Nemesa Garg wrote:
> Move cursor fast path plane state update into helper
> function.
> 

Not a pure move.

> Assisted-by: Claude:claude-sonnet-4.6
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c | 41 +++++++++++++++------
>   1 file changed, 29 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index f8b24865c93a..38234c6292ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -849,6 +849,31 @@ intel_cursor_joiner_commits_idle(struct intel_display *display,
>   	return true;
>   }
>   
> +static void
> +intel_cursor_fastpath_update_plane_state(struct intel_plane_state *plane_state,
> +					 struct drm_framebuffer *fb,
> +					 struct drm_crtc *uapi_crtc,
> +					 struct intel_crtc *hw_crtc,
> +					 int crtc_x, int crtc_y,
> +					 unsigned int crtc_w, unsigned int crtc_h,
> +					 u32 src_x, u32 src_y,
> +					 u32 src_w, u32 src_h)
> +{
> +	drm_atomic_set_fb_for_plane(&plane_state->uapi, fb);
> +
> +	plane_state->uapi.crtc = uapi_crtc;

The original inline block didn't set uapi.crtc.
> +	plane_state->uapi.src_x = src_x;
> +	plane_state->uapi.src_y = src_y;
> +	plane_state->uapi.src_w = src_w;
> +	plane_state->uapi.src_h = src_h;
> +	plane_state->uapi.crtc_x = crtc_x;
> +	plane_state->uapi.crtc_y = crtc_y;
> +	plane_state->uapi.crtc_w = crtc_w;
> +	plane_state->uapi.crtc_h = crtc_h;
> +
> +	intel_plane_copy_uapi_to_hw_state(NULL, plane_state, plane_state, hw_crtc);
> +}
> +
>   static int
>   intel_legacy_cursor_update(struct drm_plane *_plane,
>   			   struct drm_crtc *_crtc,
> @@ -928,18 +953,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   		goto out_free;
>   	}
>   
> -	drm_atomic_set_fb_for_plane(&new_plane_state->uapi, fb);
> -
> -	new_plane_state->uapi.src_x = src_x;
> -	new_plane_state->uapi.src_y = src_y;
> -	new_plane_state->uapi.src_w = src_w;
> -	new_plane_state->uapi.src_h = src_h;
> -	new_plane_state->uapi.crtc_x = crtc_x;
> -	new_plane_state->uapi.crtc_y = crtc_y;
> -	new_plane_state->uapi.crtc_w = crtc_w;
> -	new_plane_state->uapi.crtc_h = crtc_h;
> -
> -	intel_plane_copy_uapi_to_hw_state(NULL, new_plane_state, new_plane_state, crtc);
> +	intel_cursor_fastpath_update_plane_state(new_plane_state, fb,
> +						 &crtc->base, crtc,
> +						 crtc_x, crtc_y, crtc_w, crtc_h,
> +						 src_x, src_y, src_w, src_h);

I guess the idea was to mirror intel_plane_copy_uapi_to_hw_state(), 
where a joiner secondary has uapi.crtc == primary but hw.crtc == 
secondary. But even that seems to be mishandled in the patch that adds 
the caller for secondary pipes. More on it later.

I would suggest explain the two-crtc signature in the commit message 
otherwise it's looks unmotivated here.

==
Chaitanya

>   
>   	ret = intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
>   						  old_plane_state, new_plane_state);

