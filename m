Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C430AADF68
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 14:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FFF10E79C;
	Wed,  7 May 2025 12:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atl0CI9+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C80A10E79C;
 Wed,  7 May 2025 12:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746621704; x=1778157704;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y2pfVyIP/8oIjgboJbnkR4HFD39SHfS5ukzuJb23B7o=;
 b=atl0CI9+561iA0RAn2223Q6Hbah5psV7a2DXvEd2A38uGMgYZGSy9MY6
 s4ZiF84x96mq7cNLlLpa80dvaiVRZ7jrfFCxAoc8ATy3By/PtCH1zTSa3
 6VhFOxynk8Pw8ZLU13T/HpJPf+OKv2CYT7B2dsTXKrojDPIQcBRBf9wrt
 D//sciKmG3vsSMR/l25CyWzo3X14MHR7jxxzblUK68lJJ7HF3sj57wHjL
 dO+NRk4UphAcZF9G4xCyRIcZMR9pIqFJO2QwTPmM50YdFC3Qf5QrmGlxv
 dk+VrK0lMEWvkkwromkpyAGs5ee8g7TiDAEnkW/8vTeFuKyoDBZ/Supe8 g==;
X-CSE-ConnectionGUID: Q6ZoIS43R1GNf4Xnw+x/kg==
X-CSE-MsgGUID: spbb96ZoRTOAhoY1R6rGBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48219972"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="48219972"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:41:43 -0700
X-CSE-ConnectionGUID: /FJnHaIVS/iCxnCik+As1Q==
X-CSE-MsgGUID: ZDvfW9PMReGBpxLDk6rmag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="173133821"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:41:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 05:41:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 05:41:43 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 05:41:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NZggEIxfP9yTXr4cZmGcJq3aeTWkzrhBz6zYZNq9msB9llgxEyNMFiTG1fZNz4xIr0oir2x6DIWUypDQSeV4zJvnnidrlf5p6/TDD9NUBijsfc5S7G8yJm0G8kDmC+/U3cdtTARHqm3GertQMqYYOvrQo5ZF2baEUyoj/GSO34U2uihyeZRvj0ID/maL4W92qLD3gTBJchOf73eUM4qGDea428sScXNga6uPSz5W0rPQeIAeXghBhP3JpWyXrdeomIAaXze0dls+yAhPMgoA3Hkr+M4vXHyYNVbbauK2c8cIStKslld27qD7M7SMKEbb+VuvzNi/o9SkBIA4tFYyjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wSyTw36ABVCO9e+i+IQXWtAW2NxbIYvr5WGp7bCBht0=;
 b=EZXYowmdQk0CHl8oSRHMLgAawP+p7zyE7I6GaDm/gPbE7rLCHxwln1LrUQIghp1aadehwG7J9N5UAILhKqL6dfYDrqhFOJSHpBzx56+lctciHgCXUhqt3D5sH9hnhRYTu3BvN3SmJv0gbJYTFjIjePSkVMDTT6nAWqEZI+pEYF3pXu5s4Oex5T3Uhmo5jBBmFeV6QKlBEyPtXqSYfT9cS0HpSlDW8NL2+guogVrmuAF/1giRouLgbjqnTk3lkbUnQGx2su98zyCo3JLROYJDeWlhgti1peknKVqhHKWs1iwlbJAx3z4Vp9lQ89X3b/sV3mzaCTjmsWf/c0W5t61OhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8454.namprd11.prod.outlook.com (2603:10b6:510:30c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Wed, 7 May
 2025 12:41:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 12:41:31 +0000
Message-ID: <8e45df08-4514-47f8-8bcd-1d2505556c33@intel.com>
Date: Wed, 7 May 2025 18:11:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/12] drm/i915: Add support for forcing the link bpp
 on a connector
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-12-imre.deak@intel.com>
 <446cc918-087b-4ad8-92c1-66334089295d@intel.com>
 <aBtMAZ8d6AvuLoNJ@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aBtMAZ8d6AvuLoNJ@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::36) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8454:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ca18bbf-faa6-40b7-76f9-08dd8d647e77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U0ZNbTEyMGIyUFAreEVicGhyRHB0T1FuUHpvWmNIdDFPQlN0QTJjVHdiMnBR?=
 =?utf-8?B?dU9YTFBQOEwzSUk3anVpRWdHSVdSOG90VUpXdUkyM0tLeGRSdjUvL0RBOWJ0?=
 =?utf-8?B?K3dUQjdPTUZjcFdMQXY5WWh1Q00zZCtFWHh3V2luOVJuOGJrcklhd3ZxNGhq?=
 =?utf-8?B?OXdZL3gzeFpCMWpXSFZJbUlTY2ZxOGVMT21sZ0hNVm9BRE13UG9hVUp6RzUx?=
 =?utf-8?B?N2d3RC9PNXZqSVBVUGNMazhKUUFzTG1CVjFCQjlsVDhCU2ozUWp4cXNMeWE0?=
 =?utf-8?B?Z1pXNU1pck9aYVlRSUx0dHBlVDV3UVBHV0Z4Nkp6aTVJUnpjSkRYSzArUzRL?=
 =?utf-8?B?dDgvK2JaWDh4clNpMURpYVVGN3RmS3llcXpGWFhNVjlLK2RsVTNBQXBadmpo?=
 =?utf-8?B?SWJNb2hjbDQ5TXZTRDdzY3NGTTBkZXYzdTJpK0Nia0hrcTFsK1JSK2t5Tjdw?=
 =?utf-8?B?MmIxemFmaWxWRDdMaFd3UmRIckdpbXJPN1JFcElZQWRid2NPL2VycnEzWlZh?=
 =?utf-8?B?K1VDRUVnd3dUQ1F5aGZjem1wclIvcklrb016Qnhjd2dnalNFbFVpRm5weVln?=
 =?utf-8?B?aUxIS0F5SUFRMmpkdHFxOVc4VnFsVWhKWk1ldUxoMGxlT3E1cElpNm4wU0FY?=
 =?utf-8?B?eUdSeVB3UEZXTllMYmNOSFhQMExwR2QvaFJndVFuaXdlVEk1RldPUy9VcHBL?=
 =?utf-8?B?WmVGTlJkMllOZTVZNG40OGlCWng4Z21nVERmYUlKY1BhWC92NHBNcVdYTnM0?=
 =?utf-8?B?NExFWk13VnZOWWNFUFpmTm02NEhwamlQdk5LRUgyakhFNU13ZHpxb3gxbFVY?=
 =?utf-8?B?dzl4OHhYbmFkUzdabDN4VWVNeWVBQ0liUWYrRHBDeDhrSGRZUHNMUmpIVDR6?=
 =?utf-8?B?TVZHb3RHb1lyTEpoa01zY2JqN0tLODRObEV0ZnVEVzZBeDhDZy96TllZSzMz?=
 =?utf-8?B?aXlhUEd1aFdrZTVkYjNJZEtnSGJPbHJIaVpzSVpKTGxjcGc3RlFudFNQUk9H?=
 =?utf-8?B?ZGw3Mk9wWHdKbVkrR1V5SjFGeDk3L0E2UG5BRUg5Ym5UdFN0M3JYZ0FVVGJF?=
 =?utf-8?B?Vkw5SzIzWFF3eC9uQ0x3RFdaRGF0aFN4bGJtb2JCMy8vS0dpMFNmWit1STRi?=
 =?utf-8?B?OWdKbk9JWmM2V0xDNzVOYTBFSi9yajRLZGhsZEFYenAzQmVqNGJ0ZElPSnBo?=
 =?utf-8?B?clZYaWdRWS9BbGJkOHpZRjEwdVFZVXFiZG9MKzF1UTVrT1BuNjJGdWhHazJz?=
 =?utf-8?B?YTdBTmlmYmdWcTEvM2t0Yno2Y0lwbGdzK1NKaG9ZcUFiSG5maTAxV1NJdnpj?=
 =?utf-8?B?L2JqemRtZjBza3g5KzZkK1lGdE40RG9IUTY3eHhCeHAvMXk0aFZIMWRFVW5M?=
 =?utf-8?B?QXErd1ZrYURuL08vNGcraWVNeFFqdTFQWktUVFZRcXlKeG9DS090eGMyTzJ2?=
 =?utf-8?B?NjhkZHBjVHd0RndXUHpDc0RxSHA5NHNNOHRRY0tWcUpveGJ2Z1VoU2pHVjRu?=
 =?utf-8?B?eis5c1hNQVFVRWVZS0EzajJyY2pqV0NzUWpvVzFtcGZscGh5RVJVWnNVWjNU?=
 =?utf-8?B?YnVSejAvOVM0cHBqRC90SGRmTmRZZnlhVmdpV1ZYeUFkT045TEFyMkJub2hl?=
 =?utf-8?B?bTdjeGhSc2RJMXhYbTk4S1FkN2dzajhOUHhqcHZOMTE2TGFINXgxeFB5cFdi?=
 =?utf-8?B?OWFDZmxGeWNkTVo2REIxRWRINWtaVTBLMnZjUWE1dkJLMWUxWUF1THdPdjQw?=
 =?utf-8?B?QW9yanlYcHFHbUVWYkg1VzRVcVBQSlF2Kzl6K1A3aitEUDkrSnRIaGxKOHcr?=
 =?utf-8?B?Tnk5TGZPN1Z2TThhTHRSaEtkMTlBTGFhNUpFOWkrUkNQNWpXcFlHVDFENWZa?=
 =?utf-8?B?MlhiZzVxTmQySVBVdUJLM3ZaaVlOT3JqS3dlS3JHYW5wc2lTcTZUVUFHQlNO?=
 =?utf-8?Q?qh3lVsHgo0o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUxnL216dml1YXM3RThJUXd1eWFSSkhBQUtpblRBbFl5dm4zeTJDOXdXMGl5?=
 =?utf-8?B?UXNoVTI4WTByTVNSaXNYcHFKZ1orS2tTcE1rSm9DMVlIOFIwaUVOVVkyRjdT?=
 =?utf-8?B?SDNiRHdZVzR2blFUelhrSU81MGJwbisvRSszNk9KK0RaeXJrZS9zekJUaEFP?=
 =?utf-8?B?UlZ2NEdNc3NKZWpPazlIR3pVajJ0a1JtempBQ2YrLzFsb2dhSU54UDkybnMw?=
 =?utf-8?B?Z2VGQml2K2hMaTJMam9Xc1Q3VjcvOXNxc0pFT3FuZzNZUUFZaDNTQ0hSNDJY?=
 =?utf-8?B?QUEyY3pMamdHTXI3SHFyVlBDLzR4b3RkUnl5Mlc1RXNtQkZLTzBUSkNCeW43?=
 =?utf-8?B?RXVWczluYXBiVEJZOTBCejZKZE1yRjlZeC9yRzR3MG1lRUE5Y3BwK3p4REp3?=
 =?utf-8?B?K0JuUUd3OCs1Ukp2OVZZQnB2SlU0dGxZeEdDWTluUjEzV1RZRzFVamx0dDB6?=
 =?utf-8?B?UVFnUTd0bHNuc1RLZFcxbFNkUDFKQzZMaStwM2t6WHJ3Y1NMa0F5b0FkbDhr?=
 =?utf-8?B?Q2JRcHZBRDFQSGZNM2xuSWpjRFA2Y2dxUmp6N3E2eUVVSGdPZlFhQkZBTElN?=
 =?utf-8?B?SkVicmJLNzRPbUFWLzY2YnVTS0FrSUVXbkFiNTgwRVVLZFB2OTIydmc3SWxx?=
 =?utf-8?B?TDFseitTSStZNkRHaEdQOE9HbmV0eTVsL1ZjajhJZVFBTi9JcmpUL3F2RUhS?=
 =?utf-8?B?NHJTeHVpSTJ1NzVabkZGSUdhK3pFaWdadCtmdlF3Z0kwSUxXQXJoc0VPWEwr?=
 =?utf-8?B?NGg2cmhVNis4dmp5Z0FBeU1LZWJqRHNPT08rVlNjSndSamo0Tm9IYzNXa2FG?=
 =?utf-8?B?MHcxZE1oTS80RklKa3p4U2hGc2lVNkF1cGczWVN4SWFYVXVvaDFzaDRkQlcr?=
 =?utf-8?B?MGVPM3lqOVZHMVZ1d0pFbWtvK21zVGlMbkdtb0JXMk5jZFNTaXRmdmdwT3BY?=
 =?utf-8?B?bEJiUGlDUFY1SWFtRVZ2R3BCb0s0SVU2RE1MaU9XMkhXQ0EreG5YbnQvc3V4?=
 =?utf-8?B?UCtTVDA5VG0yWVRteEtqaEM2cE5KZ0hWYUpXejloQml0Ni8za2d4a042aFFq?=
 =?utf-8?B?cExTLzJkWmpqR3pxRVRkTTcwUmFIbjlqb0ZtQ1N2SVJia0pKeW96czlPYVYr?=
 =?utf-8?B?QXpCc3lhVGEzMGFSZVlQSC9KMXdVNWhZai9FbmNOVWxTN3ExYzVEaXFTbnQ3?=
 =?utf-8?B?Z09aczZVbnIzNE1rai8yekRVNXpVbmVmSENJOTNRZ3JnQ1FjNWN0WmJ4WXM4?=
 =?utf-8?B?VUpZVzJQYWM5VFlRNkFha0ZDcTd4V3lnOXcrV0FXZjdJbytGclN1WE1Tekll?=
 =?utf-8?B?QWNDZCs1Q2Q2MjNOZzRlYnM2ZWViSHZBb1VlUEcxMmNQU0hXZ05LaHQ0QnNF?=
 =?utf-8?B?anhoMHNoODFSZEFjWXY2bTRZWWl3ZFZBRjg2Vm9VNVVPT24weGF6UDRwS01T?=
 =?utf-8?B?Qm43c2tTWVZ0UWh3NWFKRVhHZ3RYMDh1VytiaFBRcmVqSlpzSFY3YlBhSU94?=
 =?utf-8?B?VnhVdEt6bEdlK2ZodmNIZTNLbVdsSUduYzhwNENIRWF3dFgrTXhFaGxHNXZD?=
 =?utf-8?B?L2ZJVUU0aTM1c1B2YTljWHdwa1gvSWFTWXd6MEFPQW1PTVIwS1FtN1l2MTVw?=
 =?utf-8?B?MmhlSCtkYThNOGVwVnVHZVd0Uy8rdjJGdUgxQXVBNzUyVlNFSTJBbkp3YWVC?=
 =?utf-8?B?ZEZ6UE94My93Q0k5SjVGSTdEVGczMktBTmtzZ1pMbm1KR0RNeHZhMXVTL0dS?=
 =?utf-8?B?dCtVeXRISkJ2UzFiWmdINjdKQjVPQ0RMQTZTY2hKRE82WEtDekk1WjhlSHFs?=
 =?utf-8?B?SndBU0loQndxcXhldWpSbmlWNitNbHRDaytDK0x6M2hnMlZPejdLa0hscFhC?=
 =?utf-8?B?czhzQjFxblliRWpBV3N5UGJ0WGlxL0VlYVNabE5CQmcxYWFaSUY4WWJET0tL?=
 =?utf-8?B?ZTlqdGVhUkZnQ2g5bHMzb1djZG9yT0Q4TVJ1QTZpN0xqKzFJSG1qdWJhdko2?=
 =?utf-8?B?RDM0UG5zc1NTYUF5dkY3ejJwZzJhM0tNdXR0RExkcW5nS3ZIakxXOUpFV2FO?=
 =?utf-8?B?WnRCd2FncmdrZTU0WTQ3a3EvancvY1JqNWErSzZIbFQ3Z0VnZWJJNjBtcE80?=
 =?utf-8?B?T00yQjUyYTAzNHRsWnlCc3FzS3JUL3VJTHRaLzBndjZJTWljUGFkZThHeU82?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ca18bbf-faa6-40b7-76f9-08dd8d647e77
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 12:41:31.6054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rkt5Y+zcPUSopboipK3FppsbOgo7zhyQ2Dbaem8RJyXiQDn0Xe5FpV96DLp493teJMOnqomKc9xW3cylpRWdzQ7b48J5FAyJNChIinZWDe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8454
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


On 5/7/2025 5:33 PM, Imre Deak wrote:
> On Wed, May 07, 2025 at 11:07:57AM +0530, Nautiyal, Ankit K wrote:
>> On 4/28/2025 7:01 PM, Imre Deak wrote:
>>> Add support for forcing the link bpp on a connector via a connector
>>> debugfs entry. During reducing link bpps due to a link BW limit, keep
>>> bpps close to their forced value.
>>>
>>> Add the debugfs entry to all relevant connectors: all DP connectors and
>>> on an FDI link CRT/SDVO/LVDS/HDMI connectors.
>>>
>>> v2:
>>> - Move adding the debugfs entries to this patch.
>>> - Rename i915_force_link_bpp to intel_force_link_bpp. (Jani)
>>> - Select the relevant connectors via platform checks. (Jani)
>>> - Use for_each_new_intel_connector_in_state(). (Jani)
>>> - Fix 64 bit division vs. 32 bit build when converting str to q4. (lkp)
>>> - Avoid division and addition overflow when converting str to q4.
>>>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>> ---
>>>    .../drm/i915/display/intel_display_debugfs.c  |   2 +
>>>    .../drm/i915/display/intel_display_device.h   |   1 +
>>>    .../drm/i915/display/intel_display_types.h    |   4 +
>>>    drivers/gpu/drm/i915/display/intel_link_bw.c  | 238 +++++++++++++++++-
>>>    drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
>>>    5 files changed, 240 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> index 8d0a1779dd193..a9b1ec4cf0f75 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> @@ -39,6 +39,7 @@
>>>    #include "intel_hdcp.h"
>>>    #include "intel_hdmi.h"
>>>    #include "intel_hotplug.h"
>>> +#include "intel_link_bw.h"
>>>    #include "intel_panel.h"
>>>    #include "intel_pps.h"
>>>    #include "intel_psr.h"
>>> @@ -1325,6 +1326,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>>>    	intel_psr_connector_debugfs_add(connector);
>>>    	intel_alpm_lobf_debugfs_add(connector);
>>>    	intel_dp_link_training_debugfs_add(connector);
>>> +	intel_link_bw_connector_debugfs_add(connector);
>>>    	if (DISPLAY_VER(display) >= 11 &&
>>>    	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> index 87c666792c0da..fe14a92ae8c65 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -172,6 +172,7 @@ struct intel_display_platforms {
>>>    #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
>>>    #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
>>>    #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
>>> +#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
>>>    #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
>>>    #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
>>>    #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index 7415564d058a2..23e3e6f204741 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -550,6 +550,10 @@ struct intel_connector {
>>>    		struct intel_dp *dp;
>>>    	} mst;
>>> +	struct {
>>> +		int force_bpp_x16;
>>> +	} link;
>>> +
>>>    	/* Work struct to schedule a uevent on link train failure */
>>>    	struct work_struct modeset_retry_work;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
>>> index a10cd39926075..b51b62e04fe59 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
>>> @@ -3,6 +3,11 @@
>>>     * Copyright © 2023 Intel Corporation
>>>     */
>>> +#include <linux/ctype.h>
>>> +#include <linux/debugfs.h>
>>> +#include <linux/int_log.h>
>>> +#include <linux/math.h>
>>> +
>>>    #include <drm/drm_fixed.h>
>>>    #include <drm/drm_print.h>
>>> @@ -10,11 +15,33 @@
>>>    #include "intel_crtc.h"
>>>    #include "intel_display_core.h"
>>>    #include "intel_display_types.h"
>>> +#include "intel_dp.h"
>>>    #include "intel_dp_mst.h"
>>>    #include "intel_dp_tunnel.h"
>>>    #include "intel_fdi.h"
>>>    #include "intel_link_bw.h"
>>> +static int get_forced_link_bpp_x16(struct intel_atomic_state *state,
>>> +				   const struct intel_crtc *crtc)
>>> +{
>>> +	struct intel_digital_connector_state *conn_state;
>>> +	struct intel_connector *connector;
>>> +	int force_bpp_x16 = INT_MAX;
>>> +	int i;
>>> +
>>> +	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
>>> +		if (conn_state->base.crtc != &crtc->base)
>>> +			continue;
>>> +
>>> +		if (!connector->link.force_bpp_x16)
>>> +			continue;
>> Hmm we already have the connector for the given crtc. If
>> link.force_bpp_x16 is not set, should we not break from the loop?
> Checking all the connectors handles the case where multiple connectors
> are connected to the same crtc (possible on old platforms).

Ah ok.


>
>>> +
>>> +		force_bpp_x16 = min(force_bpp_x16, connector->link.force_bpp_x16);
>>> +	}
>>> +
>>> +	return force_bpp_x16 < INT_MAX ? force_bpp_x16 : 0;
>>> +}
>>> +
>>>    /**
>>>     * intel_link_bw_init_limits - initialize BW limits
>>>     * @state: Atomic state
>>> @@ -31,9 +58,10 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
>>>    	limits->force_fec_pipes = 0;
>>>    	limits->bpp_limit_reached_pipes = 0;
>>>    	for_each_pipe(display, pipe) {
>>> +		struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
>>>    		const struct intel_crtc_state *crtc_state =
>>> -			intel_atomic_get_new_crtc_state(state,
>>> -							intel_crtc_for_pipe(display, pipe));
>>> +			intel_atomic_get_new_crtc_state(state, crtc);
>>> +		int forced_bpp_x16 = get_forced_link_bpp_x16(state, crtc);
>>>    		if (state->base.duplicated && crtc_state) {
>>>    			limits->max_bpp_x16[pipe] = crtc_state->max_link_bpp_x16;
>>> @@ -42,15 +70,19 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
>>>    		} else {
>>>    			limits->max_bpp_x16[pipe] = INT_MAX;
>>>    		}
>>> +
>>> +		if (forced_bpp_x16)
>>> +			limits->max_bpp_x16[pipe] = min(limits->max_bpp_x16[pipe], forced_bpp_x16);
>>>    	}
>>>    }
>>>    /**
>>> - * intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
>>> + * __intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
>>>     * @state: atomic state
>>>     * @limits: link BW limits
>>>     * @pipe_mask: mask of pipes to select from
>>>     * @reason: explanation of why bpp reduction is needed
>>> + * @reduce_forced_bpp: allow reducing bpps below their forced link bpp
>>>     *
>>>     * Select the pipe from @pipe_mask with the biggest link bpp value and set the
>>>     * maximum of link bpp in @limits below this value. Modeset the selected pipe,
>>> @@ -64,10 +96,11 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
>>>     *   - %-ENOSPC if no pipe can further reduce its link bpp
>>>     *   - Other negative error, if modesetting the selected pipe failed
>>>     */
>>> -int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>>> -			     struct intel_link_bw_limits *limits,
>>> -			     u8 pipe_mask,
>>> -			     const char *reason)
>>> +static int __intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>>> +				      struct intel_link_bw_limits *limits,
>>> +				      u8 pipe_mask,
>>> +				      const char *reason,
>>> +				      bool reduce_forced_bpp)
>>>    {
>>>    	struct intel_display *display = to_intel_display(state);
>>>    	enum pipe max_bpp_pipe = INVALID_PIPE;
>>> @@ -97,6 +130,10 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>>>    			 */
>>>    			link_bpp_x16 = fxp_q4_from_int(crtc_state->pipe_bpp);
>>> +		if (!reduce_forced_bpp &&
>>> +		    link_bpp_x16 <= get_forced_link_bpp_x16(state, crtc))
>>> +			continue;
>>> +
>>>    		if (link_bpp_x16 > max_bpp_x16) {
>>>    			max_bpp_x16 = link_bpp_x16;
>>>    			max_bpp_pipe = crtc->pipe;
>>> @@ -112,6 +149,21 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>>>    						 BIT(max_bpp_pipe));
>>>    }
>>> +int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>>> +			     struct intel_link_bw_limits *limits,
>>> +			     u8 pipe_mask,
>>> +			     const char *reason)
>>> +{
>>> +	int ret;
>>> +
>>> +	/* Try to keep any forced link BPP. */
>>> +	ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, false);
>>> +	if (ret == -ENOSPC)
>>> +		ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, true);
>>> +
>>> +	return ret;
>>> +}
>>> +
>>>    /**
>>>     * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
>>>     * @state: atomic state
>>> @@ -245,3 +297,175 @@ int intel_link_bw_atomic_check(struct intel_atomic_state *state,
>>>    	return -EAGAIN;
>>>    }
>>> +
>>> +static int force_link_bpp_show(struct seq_file *m, void *data)
>>> +{
>>> +	struct intel_connector *connector = m->private;
>>> +
>>> +	seq_printf(m, FXP_Q4_FMT "\n", FXP_Q4_ARGS(connector->link.force_bpp_x16));
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int str_to_fxp_q4_nonneg_int(const char *str, int *val_x16)
>>> +{
>>> +	unsigned int val;
>>> +	int err;
>>> +
>>> +	err = kstrtouint(str, 10, &val);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	if (val > INT_MAX >> 4)
>>> +		return -ERANGE;
>>> +
>>> +	*val_x16 = fxp_q4_from_int(val);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +/* modifies str */
>>> +static int str_to_fxp_q4_nonneg(char *str, int *val_x16)
>>> +{
>>> +	const char *int_str;
>>> +	char *frac_str;
>>> +	int frac_digits;
>>> +	int frac_val;
>>> +	int err;
>>> +
>>> +	int_str = strim(str);
>>> +	frac_str = strchr(int_str, '.');
>>> +
>>> +	if (frac_str)
>>> +		*frac_str++ = '\0';
>>> +
>>> +	err = str_to_fxp_q4_nonneg_int(int_str, val_x16);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	if (!frac_str)
>>> +		return 0;
>>> +
>>> +	/* prevent negative number/leading +- sign mark */
>>> +	if (!isdigit(*frac_str))
>>> +		return -EINVAL;
>>> +
>>> +	err = str_to_fxp_q4_nonneg_int(frac_str, &frac_val);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	frac_digits = strlen(frac_str);
>>> +	if (frac_digits > intlog10(INT_MAX) >> 24 ||
>>> +	    frac_val > INT_MAX - int_pow(10, frac_digits) / 2)
>>> +		return -ERANGE;
>>> +
>>> +	frac_val = DIV_ROUND_CLOSEST(frac_val, (int)int_pow(10, frac_digits));
>>> +
>>> +	if (*val_x16 > INT_MAX - frac_val)
>>> +		return -ERANGE;
>>> +
>>> +	*val_x16 += frac_val;
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int user_str_to_fxp_q4_nonneg(const char __user *ubuf, size_t len, int *val_x16)
>>> +{
>>> +	char *kbuf;
>>> +	int err;
>>> +
>>> +	kbuf = memdup_user_nul(ubuf, len);
>>> +	if (IS_ERR(kbuf))
>>> +		return PTR_ERR(kbuf);
>>> +
>>> +	err = str_to_fxp_q4_nonneg(kbuf, val_x16);
>>> +
>>> +	kfree(kbuf);
>>> +
>>> +	return err;
>>> +}
>>> +
>>> +static bool connector_supports_dsc(struct intel_connector *connector)
>>> +{
>>> +	struct intel_display *display = to_intel_display(connector);
>>> +
>>> +	switch (connector->base.connector_type) {
>>> +	case DRM_MODE_CONNECTOR_eDP:
>>> +		return intel_dp_has_dsc(connector);
>>> +	case DRM_MODE_CONNECTOR_DisplayPort:
>>> +		if (connector->mst.dp)
>>> +			return HAS_DSC_MST(display);
>>> +
>>> +		return HAS_DSC(display);
>>> +	default:
>>> +		return false;
>>> +	}
>>> +}
>>> +
>>> +static ssize_t
>>> +force_link_bpp_write(struct file *file, const char __user *ubuf, size_t len, loff_t *offp)
>>> +{
>>> +	struct seq_file *m = file->private_data;
>>> +	struct intel_connector *connector = m->private;
>>> +	struct intel_display *display = to_intel_display(connector);
>>> +	int min_bpp;
>>> +	int bpp_x16;
>>> +	int err;
>>> +
>>> +	err = user_str_to_fxp_q4_nonneg(ubuf, len, &bpp_x16);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	if (connector_supports_dsc(connector))
>>> +		min_bpp = intel_dp_dsc_min_src_compressed_bpp();
>>> +	else
>>> +		min_bpp = intel_display_min_pipe_bpp();
>> Alright, so for forcing link bpp to say 10 bpp (160 bppx16) for a connector
>> supporting DSC will automatically force use of DSC.
> Right.
>
>> So if an MST setup has 1 DSC and 1 non DSC panel connected. Setting 10 bpp
>> for DSC one will work but setting 10 bpp for non DSC would not work.
> Yes, setting a bpp in the DSC range will enable DSC when committing on a
> panel supporting DSC and the set bpp is within the range it supports and
> will fail the commit for a non-DSC panel.
>
>> Overall I agree with the debugfs and mechanism to force the link bpp.
>>
>> I am thinking from the validation perspective, how the tests should be
>> designed to use this debugfs.
>>
>> Something like:
>>
>> ->Check for DSC capability for the panel then force an appropriate
>>    link bpp (it can try lower value, the write will fail if its not in
>>    range)
> Writing a value to the debugfs entry outside of the range of the sink
> still succeeds, but the commit will fail. This allows for setting the
> bpp already before connecting the sink and also allows for testing an
> out-of-range value.
>
>> ->Force DSC on DSC capable, force link bpp for non DSC.
> There are different things that could be still tested. Forcing DSC (via
> the current i915_dsc_fec_support) would just test DSC with whatever
> compressed bpp the driver selects by default. Forcing a link bpp would
> test a particular compressed or non-compressed link bpp, which would be
> also good to test separately (but increases test time).
>
>> And then combination with forcing dsc with fractional bpp.
> Yes, fractional bpp should be also tested and I think all the ones
> supported by the source/sink or at least a bigger subset of the
> supported values.
>
>> Does this scheme for tests make sense?
> Something like that, yes. This debugfs entry would be also useful during
> debugging DSC issues with a particular compressed bpp.
>
>> Do you have any other things in mind?
> I think we also have to add a way to test DSC decompression by a hub's
> branch device and DSC decompression by the sink connected to the hub,
> the branch device just passing through the DSC stream (atm pass-through
> being the default choice by the driver if both the hub and the sink
> supports this).

Thanks for the pointers. Lets have this support in, and then we can 
start working on IGT subtests.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
>> Regards,
>> Ankit
>>
>>> +
>>> +	if (bpp_x16 &&
>>> +	    (bpp_x16 < fxp_q4_from_int(min_bpp) ||
>>> +	     bpp_x16 > fxp_q4_from_int(intel_display_max_pipe_bpp(display))))
>>> +		return -EINVAL;
>>> +
>>> +	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	connector->link.force_bpp_x16 = bpp_x16;
>>> +
>>> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>>> +
>>> +	*offp += len;
>>> +
>>> +	return len;
>>> +}
>>> +DEFINE_SHOW_STORE_ATTRIBUTE(force_link_bpp);
>>> +
>>> +void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
>>> +{
>>> +	struct intel_display *display = to_intel_display(connector);
>>> +	struct dentry *root = connector->base.debugfs_entry;
>>> +
>>> +	switch (connector->base.connector_type) {
>>> +	case DRM_MODE_CONNECTOR_DisplayPort:
>>> +	case DRM_MODE_CONNECTOR_eDP:
>>> +		break;
>>> +	case DRM_MODE_CONNECTOR_VGA:
>>> +	case DRM_MODE_CONNECTOR_SVIDEO:
>>> +	case DRM_MODE_CONNECTOR_LVDS:
>>> +	case DRM_MODE_CONNECTOR_DVID:
>>> +		if (HAS_FDI(display))
>>> +			break;
>>> +
>>> +		return;
>>> +	case DRM_MODE_CONNECTOR_HDMIA:
>>> +		if (HAS_FDI(display) && !HAS_DDI(display))
>>> +			break;
>>> +
>>> +		return;
>>> +	default:
>>> +		return;
>>> +	}
>>> +
>>> +	debugfs_create_file("intel_force_link_bpp", 0644, root,
>>> +			    connector, &force_link_bpp_fops);
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
>>> index e69049cf178f6..b499042e62b13 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_link_bw.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
>>> @@ -11,6 +11,7 @@
>>>    #include "intel_display_limits.h"
>>>    struct intel_atomic_state;
>>> +struct intel_connector;
>>>    struct intel_crtc_state;
>>>    struct intel_link_bw_limits {
>>> @@ -32,5 +33,6 @@ bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
>>>    					  enum pipe pipe);
>>>    int intel_link_bw_atomic_check(struct intel_atomic_state *state,
>>>    			       struct intel_link_bw_limits *new_limits);
>>> +void intel_link_bw_connector_debugfs_add(struct intel_connector *connector);
>>>    #endif
