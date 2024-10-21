Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C272B9A674E
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 13:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B94E010E4A9;
	Mon, 21 Oct 2024 11:58:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W7vULiz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F9C10E4A6;
 Mon, 21 Oct 2024 11:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729511913; x=1761047913;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=nlNjj96TA3QslifrazJ5QkwDiRdgwWyTyBPAdzBwBDY=;
 b=W7vULiz8TkWQHvLLM8wKK3TwzrFYF8NNozqARrB2UrBq+gTsqmRwVeSs
 ZZeZw+BvRsFp9FFyvbBFjMMxw1HT39nZ4hGsSbJOC6hZYp38kGmJ/EANu
 PiVVfWZ26VZ7YLSNtIP/ZZQnGU7Trl22lQ2hrsaATmoQ6JdmTVfHSK8/8
 O9zfim5xEjkO3XeVJsvRs8DD63/hblx8yHvZq5k1FgrfShYRKKponeKqy
 6a8YOllJfYcd1NAKIps64Wolkm16jYAmx70M5JYikIVazdk15zFyfOPUw
 mSp+S/5qVgs0OcSp/Dy9VkGWKc5/rR2/odQS/ExzKj0s/CCm4lWiZSzne A==;
X-CSE-ConnectionGUID: 5YeVibBkQpa9tColRJN9LA==
X-CSE-MsgGUID: 4kzrE+ExQcmNxj8hX5XpMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="32907059"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="32907059"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 04:58:32 -0700
X-CSE-ConnectionGUID: vuvDfrQwTXa0U52fApGLPA==
X-CSE-MsgGUID: 6znmXBxhRbWwd3mXNENAHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="84293368"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 04:58:28 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 04:58:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 04:58:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 04:58:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 04:58:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cSSj31EKH0U8KQeuThKVcqHhNNagB/pxaNjUPC05mR78Ix77c+egEc4ewsxjNTBQ2Vh/NWckQhNy2ahcUwj7JuO8dzH+a/+CMhiJ3Jky/KrbQr7VKCPFom/hOvOl8SCx0ocq/UFh+UADOaY3pRWTxGwMHAXIxarYNq3xT+OG1UuQxYjj/1Lz9Eksa6zOzgr2EK0iyKp2k2dwquuS1R8Dn7yU50D8yD2OZZAs8uEykZUXpp+CotKS0IF63XtwMLklv6FBbjdZeGg93YMLZEWsPQ737NDon8TFAAaVRokpVVlvXwaprqIry5pcZLOqvbGEY2J74mXkcmWWkB/7G12HgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hD6fzFSou35IgL7BQOm4ZOfAPPB/EsvfbDw89D9tTrs=;
 b=SmgGcENgNhomeHpT1zq1T5chNc+B4ANo6qmz7GUoE1H4B3RbVQbtn7ZdVUIooDsJs2C+Sa8yl82M14LuzHumNopaV31+9a0rfy28ynK5eW/rk3caJbt6Rrzp/EiyJ87/xWZ+3XfJhx8srG+JL0XFFcwiQbcyWass7cNiEsFc9YcJ1uLAOE8CHPbNGP3BLteSErY8mA4/SQgJCs/LMtCTSUwhmOKAiokzhcriSh2TX7FHaZ3BqHfxBUdPQiQnfdJgyT64dCRLpNLWf9BlpbG5PiOE8xJseDlYc83gULjbUI6cmqWIbDdIkQPRSmPIEf4l+5JRPMgSGveMRTQ4M2NG3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA0PR11MB7752.namprd11.prod.outlook.com (2603:10b6:208:442::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Mon, 21 Oct
 2024 11:58:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 11:58:24 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241018204941.73473-4-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-4-matthew.s.atwood@intel.com>
Subject: Re: [PATCH 03/12] drm/i915/cx0: Extend C10 check to PTL
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 21 Oct 2024 08:58:19 -0300
Message-ID: <172951189985.2472.13732832127012630178@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0205.namprd04.prod.outlook.com
 (2603:10b6:303:86::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA0PR11MB7752:EE_
X-MS-Office365-Filtering-Correlation-Id: e671006d-529a-4b59-6b09-08dcf1c7aa52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b3p2QTVqdllmU1doWm4wN3U1T2NWY0ZaN0I4MFJva0x1Tk43WTgvb2ZDSW44?=
 =?utf-8?B?cHFkejJrRkdWU2ViQUlMVXFSV3hhai9iZUF2VkNCOTgyeHB5dCtrVVZkSDFM?=
 =?utf-8?B?R1ZGMGNHT2U0NC9BeGxpY1BwekpjMEtzK3JOeXhrdzBNOG5CUWZ6S2k2YUdu?=
 =?utf-8?B?YkNGdld1dGVmRzZkTWRNcjlDVU1WaGx1bWhoSVVvR2Z2cDl4YVpHVHBBWjIx?=
 =?utf-8?B?STVqOUZhdnZJdzgwS2prcUFGVWp6akdSTUhZblVibllEVlBHRGQzekozRHhT?=
 =?utf-8?B?SG5LVHFwclFhY2xrRlNuYzZaSEwyOXljblVuR0VGWllmcVBma09ZL1BIb1RY?=
 =?utf-8?B?SVQrcW1CRUtoVjNoSUUzOVBGRlU0MFBZMWhWclBtU0hHMkFXdFhSM2g3dkFJ?=
 =?utf-8?B?eW5QM3Jhc0VzaDdRaVI0MzFRVDZUaWlXV3hnOXNON0psLzhrU0o5dnBVT1pO?=
 =?utf-8?B?dVhqUkJ0dXhIZU8yMTJuT21uYjRoRVkzYzg4UVZaQWd3RTR0emx6Zy9mWU5l?=
 =?utf-8?B?NUF0Y1ZHQkg2RG5GWXpjV0E5ZGhvdnFVWFhBTE15UVhyK0s0Nmd0QXVtNWI5?=
 =?utf-8?B?VFNBdWFrT04wN3lER05MdmVyVXkyMGx3MmpYOFVDMUlxV3NNUmRQSzVvN2Nq?=
 =?utf-8?B?YlNlRE82UkZjS3RTUloxS2lKZmVYRVhYdk1BT3dBZ0FrYndPRkdFSFJTenlL?=
 =?utf-8?B?R3NDNCt6ZkkwcjRVbE92b09MSEVjYk9lZ1lpT3REMkpOdnRwT1k0RDg1dnZ2?=
 =?utf-8?B?d0tBTzJvYVFadmdyMFNiWUE5cUJxWUV6UW11M2FHY2NWOTB3SElLWVA1VlUv?=
 =?utf-8?B?Vm9GMkl2NUNEc1hGMFRvbVpGaUd5QUhjdk1iVHVPU0N6djBvdndsL1I3ZjlC?=
 =?utf-8?B?N1NTVG4wMEwvS1o4aGdlbldtakxUS2FYZUw5STF4S1E5MmpNNUdUNDBLaFd3?=
 =?utf-8?B?d2JCRytlM3pmRUhJWHppNWxpbmhxTmFKUkljcFNaczk5Um1icmJwR3Jmb1Fh?=
 =?utf-8?B?dm1jWU16OFFqdnFNekxkL3FobjdWL216SnJOaU5mbFgwR2YvYmFYV2VORFd3?=
 =?utf-8?B?NjVYTytzZUdQT0FPT1ZkTjQ2dVdlcUc0RUx4WC9va0VPaElnVXVoanNqVDZ0?=
 =?utf-8?B?a0M4cGt1MnBIUkN4L2IrWFd4aGJHamoyekZ5SkpGa0NOWmVEN3p3QWduTi9W?=
 =?utf-8?B?Z1JXV21yRHQ3Y1FUM296YUE1RnVTYTF4NTVCVk4xelJ6ZGUvVnhGSW9qSU5B?=
 =?utf-8?B?K29oYjRzR1RSOVlSWnV5VTRNV0pOVmRORmIvZTlTSUg2bTZTVW9VM2ZzU0Y5?=
 =?utf-8?B?THk2eFV2bTdGNnhXd1orMTNNOWZsRjdHQnh2OEFmZ1JMNzhBR0tZYjlYZm5X?=
 =?utf-8?B?b1l3S3ZSdjREMUl5Z0JReGgrMDRHZVVuZHEvVENtU1FjTG4xYVM0d1pGcVM1?=
 =?utf-8?B?L1B6T2NMSFBBa3VHMWczZVBUa2tOdWwrczBZTWNhd0dpaXIvUmZwcHJicFg0?=
 =?utf-8?B?NlduQzVYN3Z4Tm1zTkRYWGtqTnNYaXg5b1dnMVlnbVNScU5rK3doN0ZBRXUw?=
 =?utf-8?B?U2ZEUG1DbllGYitRVi8zNnA1UnF5aUdkcmZ0Y29pZ0JZYlIyNnZXTStxT2pR?=
 =?utf-8?B?Ky96REVFamR1bDZFZ2JMalUzWnA4Qk9IcGdhWGlpdEZxUmV3aE9jeFdDbG83?=
 =?utf-8?B?KzlCZXphRy9lOXZhaDJyYWVPZ0dJS2lwOGdQV21HYXo3VXhWSGxZSElIeDlJ?=
 =?utf-8?Q?l0hm/G6h1/nQdLLIJCGqrUr4Efb9bH2aEgedOMX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWpoaEY3SzY3WTV3aGhUK3lwK2ZhVThOOTBTOE9mQ3dldnczZmRpUVNtWGtQ?=
 =?utf-8?B?QlJqcEJJVVcwOS90aVFEaEJwMWZndkFNVnUwSGZaTzBJc09JdGptVDRPVktY?=
 =?utf-8?B?TW5SbnJwRXZrRFliRmwwNjBOZDBCWStSbWJRdW0wcTRTcy9pd282NnBjOHBo?=
 =?utf-8?B?WGxXMWJ0RStmTGR5ZDhTT21PcjhkUnZsZkt0SkE1cUdxbWVHdTZQRzZZTTY5?=
 =?utf-8?B?OGg0Zmo3ajNUOEEvZVZsSkQ3TzBxaTVYVFRKZDJwVHhFZitsak0rSExOdVRY?=
 =?utf-8?B?bDNPZDE5S0NiZXhtb1VicjE5a3dwenRoNXI3RWxhb09QZDE2SWZCblRzT21H?=
 =?utf-8?B?RjJBMFd0K05scUdldllLOUJkc2hMeC9iOExTUlMvREt3T2dGRGNTVmUySnhZ?=
 =?utf-8?B?Tm1rb0xlWGZleFZtZVZPNnBYdE9GZnNLTUlSY3lDb3lBOVdaZ2d1ZmRpd3Vz?=
 =?utf-8?B?RTBWZU9Ib0pPSk9GRlNuWDR4elo4SEc5d3c0b0pNUzVGTjN2bXQrSUF4OE8w?=
 =?utf-8?B?T0wzVERLUGRSb2EwYXBGbHV6UFNaZDNsbjVZUE5ySkdPNnNDbEVweWw2UGVD?=
 =?utf-8?B?aFh6UFhrRnUyZHhjb1gvWkpKeFdjemZGWEdTalNrV01YT3BkMHdReElKYTZu?=
 =?utf-8?B?YzdvKzFOY2M5SndNWVR2Ti95NXIrMkZBR21mTUlURHhTVlZkaHVKM0Y2SFov?=
 =?utf-8?B?bDRZWXFJd004Z0hDQTRTTzlSWXMrVjhiR3VENXVpU3FaZ1A0YTZuQU92Sm9U?=
 =?utf-8?B?UnhReUhQWDVwL1BFNDdjSmJ4dG53c3JEUlBLSE9TbHl5OUtPMy9VSDlQNE1a?=
 =?utf-8?B?dGVBa2xLZmNaZFQxWU1BUkRxMFdGNVZBWlNOaGl3SUphRExWQlRTSG53cDFQ?=
 =?utf-8?B?Y3FYSXlCNStGQytidXovTXljZDBGR2MvbzFTUFJWYXFxeHZORnVSTUtONW9U?=
 =?utf-8?B?N3hlaEdQMjVQMnk0UkFXbFo0QXdtVU5pMzZDLzhzUjExWVdSMUNRdTJxRkQ1?=
 =?utf-8?B?N2pLRGVsY1dmUkdwRTBKTk0vTm05YmRMRXUvLzVacG9WZkVHeUpYNnFka1hn?=
 =?utf-8?B?VENCQzl1Rkxscmp4NnZySThIZFlwZlN0MlMrTWF4NjJXU3VMT3EvQ1Z0aExl?=
 =?utf-8?B?U2dYZGR5aS90V1lUeHR3WklGZG00ZE1NdGs2Uzc3SmJSeVBoR05sN1RIRnND?=
 =?utf-8?B?b2l1S0l0SnNIZnZZdExkKzNsRFJBRmkvMXhEdVBnaVkrUkhTZEdrc1M4QzhL?=
 =?utf-8?B?ZjdDbUE4NForbFhUNmxmNDJWVVlrdG5FclNvdDZpTTZzMTBIamcwQzNhQXNw?=
 =?utf-8?B?TjRHdDBUOVZXRVA0elZhVUwrUTZvWlJaeGRUcXJCN0lEc0RJdndBQUJISFJk?=
 =?utf-8?B?Tm1KQ1BFRlpNWnNnMCtJemlUcjBCUnVEaTNHR2FOWUdCWUlWc2Q0OW9SQWRk?=
 =?utf-8?B?SldoUytibXlhNlhTOEc3UHQzai9FV0xMYVJkME5hVVZaV3c1T0toVXVXcEVp?=
 =?utf-8?B?ZjJZcFhWY0RIN0t6SHF5ZE00OVYzV1ZZMVVEVGZWSlhiQmpMdTd4bGwyZHRS?=
 =?utf-8?B?bVptRks5TERwaktmcXMrZ2hybEY4VkRCTW5jeXR4dWlJRzg3cDZ5TnVXSGFj?=
 =?utf-8?B?SVdRVTNYUG8wcXpHMkdIUmFyakRGMUd5RlZDajNMWWJHT3cxN0g4V2d1U0V3?=
 =?utf-8?B?ZU01VExFQkxDNWgvdk94cnhEa0hQQk53ZEpGZEFFOTM1MDAyN2d0aUVNQ1Yw?=
 =?utf-8?B?OWYxcTJKanJpTGczS1VsOENxcFRRMzFJZG1OV2hxMkdkL0ZPeTBxU1Yra1hV?=
 =?utf-8?B?cXVFSFZOaDlJd1FlcUtwZEFmdlcrMzhsV2pOcHNLT0YwdEhwakZ4VWxKckha?=
 =?utf-8?B?VGlWcE8vOU51Z2tJQUNuQitpVUVpaTVwcTladXZKb0tLcWUrMXIwTnNpczZH?=
 =?utf-8?B?TnBHRm4rdGdRT3Bld2hEd0JzZFVIaU5zaURLQTJaT2JEZ1NIVjFiT0JOUWZl?=
 =?utf-8?B?U3lTWjYyb1JZTHRXRzhmZ24xaXVVY1Rnbk82NWs3NG1sY3NPYXFpYzVHRFBD?=
 =?utf-8?B?Wk4veXIzSnc2cGtIbHp0V2xoaG02OFQvckorOERsWU15YnJPMExmYldZNnZJ?=
 =?utf-8?B?Zlh1YnlyZjBGZFFvQVRkVUZOZGdwSk8xT3BxVXNTK2JWTzdoL1lZOEU2dTZD?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e671006d-529a-4b59-6b09-08dcf1c7aa52
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 11:58:24.0551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sd+eNdwnallmAHQ1lcF3Hy9PuILGb2KMsKEA/o75dZTKD/VgWf/MIoa7g2AimZ3UPgMXQ8Y40Om/L46bHHytew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7752
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

Quoting Matt Atwood (2024-10-18 17:49:32-03:00)
>From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>
>When deciding the type of the phy, Add PTL support to make

s/Add/add/

>sure the correct path is taken for selection of C10 PHY.
>Only port A is connected C10 PHY for Pantherlake.
>
>Bspec:  72571
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 9 +++++++--
> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
> 2 files changed, 8 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 13a99f494680..73a151c81706 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -34,6 +34,9 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encod=
er)
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         enum phy phy =3D intel_encoder_to_phy(encoder);
>=20
>+        if (IS_PANTHERLAKE(i915) && phy =3D=3D PHY_A)
>+                return true;
>+
>         if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
>                 return true;
>=20
>@@ -221,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder =
*encoder,
>          * down and let the message bus to end up
>          * in a known state
>          */
>-        intel_cx0_bus_reset(encoder, lane);
>+        if (DISPLAY_VER(i915) < 30)
>+                intel_cx0_bus_reset(encoder, lane);

I think skipping the call to intel_cx0_bus_reset() should be a patch on
its own.

With this patch containing only the change to intel_encoder_is_c10phy(),

    Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

--
Gustavo Sousa

>=20
>         return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
> }
>@@ -310,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder=
 *encoder,
>          * down and let the message bus to end up
>          * in a known state
>          */
>-        intel_cx0_bus_reset(encoder, lane);
>+        if (DISPLAY_VER(i915) < 30)
>+                intel_cx0_bus_reset(encoder, lane);
>=20
>         return 0;
> }
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/g=
pu/drm/xe/compat-i915-headers/i915_drv.h
>index b7041b578e5e..bd8c3de57dcd 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>@@ -67,6 +67,7 @@ static inline struct drm_i915_private *to_i915(const str=
uct drm_device *dev)
> #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
> #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
> #define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
>+#define IS_PANTHERLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_PANTHERLAKE)
>=20
> #define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
> #define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
>--=20
>2.45.0
>
