Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EC0B443A6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 18:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CB910E32D;
	Thu,  4 Sep 2025 16:53:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aFls1iPD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796C110E22D;
 Thu,  4 Sep 2025 16:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757004797; x=1788540797;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=5Ttmh/TFFU+H2zIUD/Ps33fle8t+4MYV1wIz2XCq0+Q=;
 b=aFls1iPD94y7nRn321BNgU5fR/3k8c3aFA7paBfTG/3vSbCBKmx1a8kW
 dqfzptipz0RYM1EtD3ZV2AGPuiBfSNqVgxpEgBwLoa2cyYs3aVBZ8eIoN
 SnRl9LuCQ9RaQXMg/QyFHW4ZMgsMEb4S3u3/R8mn4iVAKzMTGMUdaOLtX
 iodJSuL7CwACVhhT20nUvzyPUetpXpvC8Y0X0NW2UL57GuMfXVQM7umQK
 X+fXEA1+0escRs+hvwU9REBoSmVaH4nSn1HraBB6UC+cWApyxUADp4C1O
 feIERuhR0MXC/fZxTiOqJZmJI1h09xAK/2nKeAvwqiyEnnswoi53IKpnU A==;
X-CSE-ConnectionGUID: aqc+GWaQRWCS5KgwN4+/EA==
X-CSE-MsgGUID: 44U4Hb1wQC2yw/tv7lx8zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59302222"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59302222"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:53:16 -0700
X-CSE-ConnectionGUID: iP9LbNfxQyuqsrd7j+rUHA==
X-CSE-MsgGUID: qQdmUyKXQLGBYWFYq5PIiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="172052730"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:53:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:53:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 09:53:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.47) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:53:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DHLiEtfxO+YZ0JTocXoXPhWJ1l8b9GjV4VS1yrL+tDcR3va/P9X+/yhKLxwhHvXTyVSQi61ZR7vAb6x6WjcrSMVf/CGbauq4NH19dO3mSKGWktY91XHXoaTgMbGJQMxNBS2DvJ5gp7u5+v/7P2TTIa9l8Yi7/ew+RdGljwfbEBzELnMTZreW9fWNOMZvDm+Om3TVmYlKzkFUzyv52cm7PTlacTIj0PVgQo3D42SBfGnJgEjvC0fIw0+q6OZB1nxMHCOrKzzxPqNqbQyfjTS/3L7ObhxHHw5ddVggzZY+fmnUYCu8XnqXvSAkSF3WlQB7Z5eaM3UOqVlF87XrF3qiwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/kKeLQpnfRdG53zJUB/7la5q+pKWenV0Pg92GpvC1o=;
 b=sJFRY41EDBp0Qwb5fhvExfjcaH4dH2VlKgDa4itpTu8FS8QBcl0prkhEy/lekUDFSNoep3u1WTPHIlW4Dwcv3KWn1M31wAGnY9L0e5OM+ymtz0qYEs6wkvkmxJ4IQ7vUE8aliHgcc3VaAiIfeRWgEG4RVjCWM6+C6rMGDzxn7hGLSd4ABU5cGwiQGv+QRxPJKJ1uMXE8YAzEY/4UdzPcXvyARXDMiGeOSLObShSfUX0v+osSZWmjqbz+0fTMQ6fHp/tpuPlxfXCVKny+ikeDu7KEC/8DuapsGGa52p4hDxBLeEUFOkdP8PZE5AAe0KSdTbB1w1885uJg+poTgcX7wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB6399.namprd11.prod.outlook.com (2603:10b6:8:c8::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.18; Thu, 4 Sep 2025 16:53:06 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 16:53:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250903170821.310143-1-matthew.s.atwood@intel.com>
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
Subject: Re: [PATCH] drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <juhapekka.heikkila@gmail.com>, <jani.nikula@linux.intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 4 Sep 2025 13:53:01 -0300
Message-ID: <175700478100.122246.8257747418250302965@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0022.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::27) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB6399:EE_
X-MS-Office365-Filtering-Correlation-Id: a14df537-06dc-4b80-d365-08ddebd384d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXRiUFh3dmUzVGdXVmQ0T3g1cFVZOTZITWNsRFdva3lTMkVyRGRVZG5EUW9H?=
 =?utf-8?B?ejhhTWltVDlVSXJrc0ozSUs1SnIwdEx6NjNFeUlRZENiOXpZQThUY2E3czB3?=
 =?utf-8?B?SGE0NWtCMFdidHJIdzhXTHVwRGhibHdEd0FZdzVwdFJBR2FyWGFjY1d4Q01v?=
 =?utf-8?B?dFljVXcyeThYUWpRNXFMNFhMZW5Cbk81TG1nRUNPbk5JT1I1Q2s1ZzFtVkM4?=
 =?utf-8?B?bEFFbTRQUld4RytuWmV6c2ZPVmtVc3NyY2R5RVZDWDRnU1BWcGJFTThSU3F2?=
 =?utf-8?B?YW00QkFKQTZ2ektxWlQ3cXp5VmhUQjdtb2ZaWFVlR3lHWm10RFVOOHIxVEho?=
 =?utf-8?B?K0FoZFFZVzh4ZXYyVjdyU041cGZ1aVAwdVA1QWZEWDY3Rmp2Zko2RGV3VDBJ?=
 =?utf-8?B?Z0FoMWJCczB4Tk5GV095ZVZxcVovMm5HVzRtb3FoS21SSWFWQlVGYTZsWWlU?=
 =?utf-8?B?M1l2TnZKREVCNXdNVTdlMnlFcmZHYTQwOENsRkxOVGYyUkc5WmJWdGpnRWN6?=
 =?utf-8?B?eGt1d0laZ2FINytJc3doZ0dSelFtanFPUkQ1Y1o0SnQzYW94WUMvaVZDME8v?=
 =?utf-8?B?cmlLMCtLVGl1SnVVT0hMWldrd1kwMURwUGNNN2xCOU1aSHp0ZEo2anlHU3dU?=
 =?utf-8?B?c04vbVlndDBiWGZSUDRUV2x6cFlaUStCNjZ0QjVvMWUwc2hpL3huNC94eDdT?=
 =?utf-8?B?dFBOT3l5RjBxT1ppUDRvVUhmeG85V0xvbXpMTXZaT245dXMzS0RkUDA4RzFp?=
 =?utf-8?B?S1NGUjRDSWI3UkZwUWk1SHMwbW5zdGF6T1dGZDBlTC9LQzhVOFpKTVcwZWUw?=
 =?utf-8?B?RFNjODliajJCQ1FjZ3BCS1Q1dmRNRGVPYVJrQ29CdkxETkk2MEhudy9wNFJQ?=
 =?utf-8?B?V0ZqY0ZBTVlTN3lRQjQrQmpnSzJQUkJLTFRGSWlUR2R4Z28vUFIvQTNXRkJM?=
 =?utf-8?B?dWpJSVpubWdsM3d4eVhTZkNyN2lsZklpcGg2RUF0d0o0a2JDa29jZUZVWjd0?=
 =?utf-8?B?SzlYeEtiaGVuclRwUDEzRXFaakQwQU1qMy9BUnNvRGpiUmJyclM1WVZ0RStE?=
 =?utf-8?B?ZldkSUV6ZTIwQ1NPREx3R0Zsc3RGL3JIcm9NZ3dXdGtYQThqaXBHTytIOUJx?=
 =?utf-8?B?alcxamh6cHdsOW1xL245L3hKb0RYMnBEK2lwOUR4TTNCT0VNbzNkU3Nhelgw?=
 =?utf-8?B?ZDRONy9GK3FVdXlEbEZ3SjZUdi9WRjhJMXpLQ1Zua2lhd3ltUVFjRVJPQTEx?=
 =?utf-8?B?S1hIbHloaHlsaTNmL01COUtPRURZYWNPb3czRXpnUU1CZmdyVU1heVBjYXVG?=
 =?utf-8?B?KzVKVllMQm5SMk5yYzJoUkxFL0QwcHp6SVNUeWp1OTFUT2dHT1NiTFhtaWFQ?=
 =?utf-8?B?R04wRWljVHArUHlRUmVBQ1RJR251QW5kbmFqUlg3Y1RZUzgxcW5NL2l5RXJ1?=
 =?utf-8?B?TUpGOWhtcmpVRVc5NFZpZEJDc0VGRjg2SXlBQWxRQlo4b01STWcrWEZYRG15?=
 =?utf-8?B?bXIzWjlaZENjK20rVW9GWUlsV1Azc1p1NkV2RjUwTmgybXh0azdDa3UrVG5v?=
 =?utf-8?B?VkcySTQ4NGNLbjk0d2FFOFMrcHlaQjZudlhTbWJ2VHhrL25oajN3NUNrZ1ZX?=
 =?utf-8?B?aSt4U0lXKzJGRFd6U1dMR21hWXMwQXFzTmg5UERDSGZzZnI1Y0lzWG9ZZmlO?=
 =?utf-8?B?R0pNZ3JVR3phTkRLTUc0UHdUTElmOUt2cFdBUGNOT1JRNzFaTzlzTVJZcU5S?=
 =?utf-8?B?Mm1hQ3JuU0I0RVNDQXc3Wml5eFc4UUpWRlB0WnF4Y1djamNIL0thZm9RVTg2?=
 =?utf-8?B?WFJ5cTNkNGF5WEFiNVp6TkZEaGtKNGdBL2FpSmwwcWNGN1FDUlB0MFBNb2xJ?=
 =?utf-8?B?TkxFSXNMb05QbHlhT2Ira0NHUWFVNHd2SVVNbUh2RXduMkc4VGhGclA2cnQv?=
 =?utf-8?Q?A98T8e+ZfGE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1ZlbHhVWlZ1QmFNR1ZmcnEza01MVzdTRm9ZTmtSR0VrSEpQS0tmM25zckVm?=
 =?utf-8?B?eGNKVGxSYlBhTUc0OTBkZ0w1VmFXNGo3SGZpZkRqN1RSQVdOTXIvREptZ09h?=
 =?utf-8?B?UXp0QXZjcTRRYjlHNHE3N1ZheC9LOUZhT2pZb0l2UHBkN0pmT1pudXVwUzNn?=
 =?utf-8?B?cU50TE5FNFd2eUdJOHJGbHNUN1NxLzE3YUUvTElldm0reWtBRWhmTG5WK0Zu?=
 =?utf-8?B?M1RBREdVR0xjb3YwQzk1NEs5TjZ3bjB6a0VvVEhDck9sb0JvQlNxR2ZxOU5x?=
 =?utf-8?B?V0g0OGFFcDZmeVhNY04zS3Vhc3gxREZlMS9rNUQxYkVHQ1dxc09iSmZTNmxn?=
 =?utf-8?B?QzlaWkZOWHNDRkpBVHBlVGM2Q2VTbG5HYWFka2xhN0l4RzBjSWpqbDVkNkF6?=
 =?utf-8?B?d2trbGc5dFBnODAvdWZjZWNRRmgxSlU5REJBUEJia1hWZDBRM0lrbGd5ZWI4?=
 =?utf-8?B?MFc3eDhRd1FPczBFeXZGditlYTJVbTVWZjFJcldNeUI1L3ZYMmZNQy9jbitN?=
 =?utf-8?B?RzJTLy9sd0RTUE5XR0l5cDdKUGtITFFyZ2hoaE1zMXB2K0RPWUIyM1Z6Undj?=
 =?utf-8?B?Z3AxMkZIZ0FMWTZ4KzlWUzRGYU8za3hwRFdYTm16eWJRdlM1TE15UHhkUUJo?=
 =?utf-8?B?eUxrcDNZazNWZnB2UlNFZWdYMmFCZTJFS1B5WUNNaWt4U2V1cUx1Y2poU0NJ?=
 =?utf-8?B?Wk1MTFp0VU13ZjhkelU5YWFhdmh4OFUyUkFBZzMyK2x2YkJ3aU5jaGVwYkoy?=
 =?utf-8?B?UGNOSkw0eTRtc0dwUXR0bW9weDVwNWwrWEVoRGpkVm5vRGpCLzR6TkJndHJC?=
 =?utf-8?B?RkVSVjRTb0hSQ1FFdjl4SDBIYUpoa0toL05rekcrbm1KcTQwZU9FT3NNVmYy?=
 =?utf-8?B?b2F0S044bDlONDVHWTZ6TkdiSW8rQzhncEVnRGdTVFZTRzVHYmZWK2MrNVh0?=
 =?utf-8?B?MEJXaXVoTEpEU1BOVjQ2aEtLb2lBMGZNa3dnekIrZFlKTG5KMGhsbndFZkFw?=
 =?utf-8?B?cUhFMUs0L1NUbnJCZWRwNFBkUGpOYmM2N0ZQaU5GT2RCVkJtZkRCcTk1dnY4?=
 =?utf-8?B?dkp2eUNVWmhmU2swRE95UGorRmFkSDhWZFJva251cW5jaGtoQkVzVFN5M0ZB?=
 =?utf-8?B?dXlMb3I3dHFWMXdLZldhMnJLbmFhWklKSkhILzNsby95eEY1MGJ6SkJaMkwv?=
 =?utf-8?B?UERaS1dwMHlqYm9hSnFEZkdHSDZtTU1CVk5oR3VZakRxMEl2TzNVYU1HR1FL?=
 =?utf-8?B?RlNqWkNTNEx2WU1iazhOMUREVStWK3ZTV1FleG0yS1RYK1VmME1KeEluZkVK?=
 =?utf-8?B?NU9LZUtVcUw0aWhBdEdmcm93VW9oZ1U0cUVGNW1EV3NDaEEwbEZQRmZBYWNE?=
 =?utf-8?B?RlYrN3FaMi8xUVRGUDFFeExZZ2JWWUw1enJvOEkxYnd5RzljakRlYUlhWFp5?=
 =?utf-8?B?WDBaNHJyUTdZenRqVGZTVDAyejMvUGExTHBJVHRhN0tVU1pINm1kQjArNkpY?=
 =?utf-8?B?cWpxbkdoNmFRMzJDVW9ST1hQV1RlQXBjeHdaZ1MvNS9BT0Jxek5Lc2x6aXVt?=
 =?utf-8?B?WGdtaC9OSWpNWm9tU292QWtvc2RkSVBaSUVraWE1UUxSM0ZhNVkrM3FaZHlB?=
 =?utf-8?B?R3NiL1RDWE1mMUFFOVpUbVdmYU9BWGlqT0c5TnlwZWVQZUU2b0RkSGhucHN1?=
 =?utf-8?B?M1cvL2FHT1hnSmo1ejlobExHRmJXWXZrMEpUNnVnUEJvL1dsLy8yaW1BQXJs?=
 =?utf-8?B?WDNIYVJScHk4NzFMa1JKeUVIUGhRSEgvams2R3EyQTE3M2sxQzBteVFoQi9N?=
 =?utf-8?B?UHV2Sy9FRmxjQW9vOEtCZFdlQjMxbEpkemlLYklQN0cvVHdONDd6eUpTV0pq?=
 =?utf-8?B?a1hkUHZEVVRFNGpsKzc0MGYycENOSkZPNUxtYmh0Z2g1cGd2bng0aU5yU2RG?=
 =?utf-8?B?OXRGWUl0bjlRQW1DQjAyaDJ1SXBPZWdVTkhjaDJxTUFiV1o3eWx2alRHK2dS?=
 =?utf-8?B?b3ZYdzVuSjVQUWNMSklkaFYwL296SVhYOGpnNVNEVEZpQWVuTnc3cnM2ZzRS?=
 =?utf-8?B?Q2RMRHY4dnlPb24reDZtdHJLVmx1NWxHVzJVaEQwK3lpUDJJcUgzWE5Ta0Np?=
 =?utf-8?B?VXlBakVmQms2eWFxcmJvdmx6QmRYeWwzai8rMytLdzgxcXFDNFVYckFvZVJD?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a14df537-06dc-4b80-d365-08ddebd384d8
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2025 16:53:05.8169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pptwz0+HFlvzk40hd46zg/QY5tWRX03znjT4LR4alDeby6ee+D9x+5lIOr9ChGTo7II7h+CdQPJEetNsbwPXXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6399
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

Quoting Matt Atwood (2025-09-03 14:08:21-03:00)
>The checks in plane_has_modifier() should check against display version
>instead of graphics version.
>
>Bspec: 67165, 70815
>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i91=
5/display/intel_fb.c
>index b210c3250501..1e4cee857d7b 100644
>--- a/drivers/gpu/drm/i915/display/intel_fb.c
>+++ b/drivers/gpu/drm/i915/display/intel_fb.c
>@@ -563,11 +563,11 @@ static bool plane_has_modifier(struct intel_display =
*display,
>                 return false;
>=20
>         if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_BMG_CCS &&
>-            (GRAPHICS_VER(i915) < 20 || !display->platform.dgfx))
>+            (DISPLAY_VER(display) < 14 || !display->platform.dgfx))
>                 return false;
>=20
>         if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_LNL_CCS &&
>-            (GRAPHICS_VER(i915) < 20 || display->platform.dgfx))
>+            (DISPLAY_VER(display) < 20 || display->platform.dgfx))
>                 return false;

Hm... Maybe using GRAPHICS_VER() here was intentional? The checks on
display version are already covered by the entries in intel_modifiers.

If we look at commit fca0abb23447 ("drm/i915/display: allow creation of
Xe2 ccs framebuffers"), we'll see that the respective entries were added
to intel_modifiers *and* the checks on GRAPHICS_VER() were added as
well. Perhaps there are indeed restrictions on the graphics side to be
able to use the format?

--
Gustavo Sousa

>=20
>         return true;
>--=20
>2.50.1
>
