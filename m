Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72929CF6DF4
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 07:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0491A10E0EE;
	Tue,  6 Jan 2026 06:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DtekNOUw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D22A10E0EE;
 Tue,  6 Jan 2026 06:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767680330; x=1799216330;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ozYsGuQz4WVwKDRSbI9XapX6suQ5GDtEPRMaIINqdNg=;
 b=DtekNOUwbkXZtMSMR27dGekE06oUmevl72xUN0XKQ5RJ+XAxBCZ2mULC
 8Sb64uvoMnyXu1YwTsAhQFDhhbt44gaJXRNDW44gO5STAmQlE5b3UIEKp
 ncL5yVwFMs/R6OpjbSn4qz0NPV2qSZQwivYps3TrQEEA1PJ/b7GWCbOwd
 nK2JeYs+evr77etKODRU00RYes94P+tq3b2eVAKFnZ7jap0bEhkKEUrPi
 /I0iWBSxOcoIgXU90dFuBK961mFpoRw7+O7Ej04VdLAfP8jN+4+f6YqtP
 ySy+E9U/DxYIV7uHr2/tAwEAq5A7XQyRdxf1OIxjiunCcgbxskqf0AQfi g==;
X-CSE-ConnectionGUID: lb05xxeORXyGvwAupzyARg==
X-CSE-MsgGUID: i5y18W+TS8OHkcbW06n2gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="91701845"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="91701845"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:18:50 -0800
X-CSE-ConnectionGUID: 8/AxyzuXSgONMr3214Lp/Q==
X-CSE-MsgGUID: Jf7wQdD3S/+ri+jCBxm9+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207048429"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:18:50 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:18:49 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 22:18:49 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.68)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:18:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dmzZTMrah/S+zJyxRfWibQbdnCkhq0nk0st6R2pl9kF21VGUuQVFAHyNngJEY5jAy4RNqg6SnYmjwPef2vP5QNeRlTzRwSfdZXiBd/FPcoUMeLaX3yNRxGGNWiCwZZPs4bzzcEGnctc7ukBDKItXd8oaJRgBbKysVvpmF1nfsLOWMnjRCGtHMhBGk8uPa5Lj50KXQ75GjvMX94Ti3D/JdVVaFe9AgSzJa8tpO9HoSU8JPK4+6QJ0d3eFb79gFi/zxg15TjcgLYJ4NJGEJfDrZVtmTvEvyGwrWC4DxCXdLLZ0+CYpH6zBQKhtWsx7FBGfaiS1PVRzB88PGuVsIZbVNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ozYsGuQz4WVwKDRSbI9XapX6suQ5GDtEPRMaIINqdNg=;
 b=vLlvlzxDiIz5YCQHqbiUK6gpKLO+HU5e6RlzvAU0g+NxwRqKpjdRz0iVNLvPt/Ft03gBJ1VjGZVG9CQ6/6paCHj+P4FJ4icZpKCk95Q1PteiXDI08UFPsj80229cNndmSBc0pEex6NVdk8xywEIASX9ePFhZW4vZYw4OxokWTrfFNiA7uEf6wIKz4wzauRcjBmBkKBWW/juA6UMEEbnRYVr/I59uf7HsgxZwpJa29sjaawq70HrlnNYbdQN+PpQDLCheMMoSdmRVCVv5/qTfGdsYvK0wJqklhuvGDupeCKZXgZfn73iNc9fu3Wmt2+/HPG1hNIH0nekrKh9uj7zBuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CH3PR11MB8561.namprd11.prod.outlook.com (2603:10b6:610:1ad::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 06:18:42 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 06:18:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/cx0: Move step 12 to enable clock hook
Thread-Topic: [PATCH 2/3] drm/i915/cx0: Move step 12 to enable clock hook
Thread-Index: AQHceWbF4oo2i3tJO02PD5RPqJa9fLU6TXwAgADmk7CACHq9AIABBsUA
Date: Tue, 6 Jan 2026 06:18:41 +0000
Message-ID: <IA3PR11MB89378E76E3CF116FD4AEFCAEE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-3-suraj.kandpal@intel.com>
 <176710816443.18661.15779385817780893127@intel.com>
 <DM3PPF208195D8DF5E9FF8C552BD4B63CDBE3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <176762384242.9480.14418194462966711746@intel.com>
In-Reply-To: <176762384242.9480.14418194462966711746@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CH3PR11MB8561:EE_
x-ms-office365-filtering-correlation-id: 28224df1-5cfa-45db-b862-08de4ceb704a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VTJmRFJ1VkdzSjJUMU1vNGxnK2tML0wwZ2liY282MjhlM1pGb1Q3SnZTZUQr?=
 =?utf-8?B?UE9JTm9JUFZJL3I0c0FYdDk3NTllQkxpeFVkNXdjblQ0NGhpV1NoaDg4YmZi?=
 =?utf-8?B?QWhWUDZXWWVsa3RwdHBkeWo0dm5BTlNScWVIbDFjZjdhckg4bjFlN1hicklF?=
 =?utf-8?B?eVMyYStuVExUYlc0Q0hnOGRhMEg5bkxoanJpckVtVTlwR3NkUFMybnZkemxU?=
 =?utf-8?B?NWRnYmhnOEJrbm9xTW1ZZDJ0eFV6QXRncG9vK1E5YWxZV2Vib2REQm4zVGw0?=
 =?utf-8?B?aE5JTktjemJSODBLbFg4QUNWb3hYQ2RxQ3ZFNGFNd3JVVnZSS0djU3VQRkE2?=
 =?utf-8?B?SDIzNGlNNyt0bDN4UkZzVHBzZmRPV3FJS1dCZDV5clVmeXh5ODFBbHhaTVFx?=
 =?utf-8?B?OVlqTE1IS0Jib2xxTzdRUk1tMzAyVkdyR1VBd2RwcXErcmFSd1Z5aTVYNGd0?=
 =?utf-8?B?NUdHdTRIN0sxSVcvWUsyaUdhTHlQN1JKQVNnb2kzVjFqN3A4L2FydDZVdXZQ?=
 =?utf-8?B?NkpCcW1yZ05wcjRKU1orUXQwN0dYcWd2cGVNSml0YkVCZ3ZDN0RvZVc4Nkg1?=
 =?utf-8?B?V1lyTU00dWliNTRVdnJTVkhaUklyQUI1ajVCMHNNUWRjNmFuQWxmSWwzMlA5?=
 =?utf-8?B?MUF6MjFlQ3JhUXRKUURPWG95ZjFOdlRCZGlXTzhjVis2S0RTWkk1dDl6WHdC?=
 =?utf-8?B?YURoVTNHckhyOFpQTUFkR2tyTloybk5mbWpDTitLMFlHS2VWOTYyNjhWdE0w?=
 =?utf-8?B?aTQrK3pVY0tLdlFDcThIMUsyWWFDVmhSWlpSTFFZQjJiRGM0Z1lGa0NTWDA2?=
 =?utf-8?B?TGk1K3NZOUhJT3RDZkNJcU9Pa01WU0NlVTFqZllUR2FEVWxyWjhYOGwyUThQ?=
 =?utf-8?B?T1lKbC96YTI5MEczdU4wSG9adzl1bzMyNmJrbHFzYjZQVlpRS2NMMGk0eHRP?=
 =?utf-8?B?N1VkMGQ1UGNWTTZqRDJaTThnc0Z0TEFxZXFxanhPK2pMRmR3NWpPUXEzcnlZ?=
 =?utf-8?B?enRBSTlhNzBUbWdTTnIxRWdOQTlkUDdTWXlZbng4WU5QOWpuU0FEYnZyQkRY?=
 =?utf-8?B?Y0o5Y0REMXI1UFI5Y3hEWDZVdlpvWjROUHgyUEdkTTBuQXg4SnZlNEZDcWxX?=
 =?utf-8?B?N0hFOHVPczZIei8rcmMwQVBXMlM2NjNNWURuNE5TYmQ2SEdwRmZQWnNJVGhZ?=
 =?utf-8?B?NkNCN1M1R0paUVZkSEZlMlM2VjdVRFRvMmxnT3gwKzBtajhkVUpJNTcreGJw?=
 =?utf-8?B?ellaaUN5OXYrc0w4ak15UEJDYVJMTnUvYUo3WStab3c0NmxPaEV2ZnMyS1Rq?=
 =?utf-8?B?Zzh2dmV3Q2EwRkZXSWhobit2MHYxNnBtY0I4eW1VUVZ6d3l4SlRmRWpnb3Nx?=
 =?utf-8?B?WDV0M2JXSVFGQi9CMm1aYmVreXFzUzl1ZFp1eldpSEpHNWtkbjhEZUFqcnBW?=
 =?utf-8?B?QjFsVkt0K24xT3Qzc1FiazRNNW85aG5EdUVFUkJvN081Z1k0d1RadUgrL0tF?=
 =?utf-8?B?cVN6c0haS0hkNEZEalg5L0VGYkcwcWpKcmh4b3N4VUlHTXFGODU4TVl6MUsx?=
 =?utf-8?B?c3ZCWkpwd1VxbFE1Q3U2QVZsNnpZKzdKQ1VVRlhJS0lWam1GdUpIRkU1Y2kr?=
 =?utf-8?B?aG9uc3NZNzd4U3N4MWVwaWRtVjEzbjEzTmJraVpRdXFpeE9EWUxUL1k4RWc2?=
 =?utf-8?B?NXNHQmc4b2ZTUFI0bjB0d1p5ZHp5ZXpUUURIVVF5T2luZm9ZWm9Ea3BBV2Mr?=
 =?utf-8?B?UzB0emk0K0ZzVThScTVONHAwb3RJejBZUllSY0hwM3hTcXo4eHhwaGE0OUFl?=
 =?utf-8?B?b205N3V4Q0RadERIVXQyMk9TNHRtNkk1R2draURYRUd0WlhqVG1KcTZPTmtU?=
 =?utf-8?B?eWRNQ3JCdWV1SGcyejlXL3dKUHIydk11TzF4MkkrOFlDeE1kOXpBUG92K1NN?=
 =?utf-8?B?dmFUS20zbUQremxCUXZsRFdlWlM3YmVDazdOS1FJSHp4RVEzYXJDSEc3RGFQ?=
 =?utf-8?B?YmxFWDRxRkRsaGJNMi9NV2wxb3RLV2FKRzRZUHg0S1NDZVY3YURwQU03NkVu?=
 =?utf-8?Q?Pjx2Rm?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?LytsaHNZcjROY1BIZk5VZU5vS3dLZUUzWXoxcm5WTFlXNS9yYVBaZjRBbmo0?=
 =?utf-8?B?SEJlOGdVOUEyOTRJNVFHK2Y5eG04bVQ1ZzBYZi9KY2FMN0c4YW5CMVVEMlRH?=
 =?utf-8?B?aW5QQS8vNUQ3cVc2ODBNRTJNOERuMVltR2tYZFd6TlgwK0xoOFZXZ3liOVFM?=
 =?utf-8?B?TnZHOXplS2V6MW4ydWdMZ2FMY1dUQmk1WDRmMzNZYUhGZ2pCZFVPbmlJR3Nw?=
 =?utf-8?B?QjBWTTF5OGFOdXE2ZEdEUUtSdnpybFFMSnVGb2NvendWaitLN1VCWEsxKzAx?=
 =?utf-8?B?endQZ0RqYWI5c2NVcUtwbFZGZ0xDVGMvZUZYZFZwMVprWHJoSUM5ckZpaDg3?=
 =?utf-8?B?UmhpMjd1dFNmQ3VnTFJiYkJWRC9yVlB6UzFaQUtpMzdoak5rYUwzZS9LNVhz?=
 =?utf-8?B?QjdUU3NuL0hTdUZsZ0Fnc3JIZXh5ejdmd2NUeFdQWStCR0xZTDFUa25sck5x?=
 =?utf-8?B?S2JTaUd1dy9iT0NEY1p5WUE1d0xwRXFBbDRycEVyR2FFTTFNN3Z2YUNwNjQw?=
 =?utf-8?B?V1pvelR5WVpmbTZXMUNmZ0xkbkFCMU5vRUNNZm80bzc5NWNydG5BTlJ6cHJp?=
 =?utf-8?B?UUlBaDV6Zys0RmoxWGFCa2QwRFBDYUYxNFNoc1lvYWFwVmhMSVVQbDN6SUpB?=
 =?utf-8?B?VlR1WVdqSzNLQTc2YWZoOFdkN1o4V1hPaHhhYXhxNkJPWEVWMHJ3bTRoa2tF?=
 =?utf-8?B?V0hTY1pLNzd2Q25CZjE4MWVZM2dtZzFmK01HU3gzMU1BRDdQOWEyMDJmR3FX?=
 =?utf-8?B?S0RlRFNRanQwVW1xN0dIWnhnbkdsOWFpZkVZZVZPMVJaQ0xDN01YeXZMMWVP?=
 =?utf-8?B?aUs2UDlHOTFpVHF3Z2hxbFRDeU12YktlL2kxVHFZV3pPZWl2em1CNDNkcWZh?=
 =?utf-8?B?SjUzUWh6V3JnL1J1dm5xaWF0UWhESHVPT3FrQWpPZlpHaHdVMnNSdktVUnpF?=
 =?utf-8?B?WFVxRUsyWDd4dUM2WHd1SjhEVDUrU0ZxUmtqZGtiYi9ReUE2OVNZZTRaMHpI?=
 =?utf-8?B?bHNqOEpoQ1E3MW04UzB6Y3Zvd3pOT2U2NDIwSlhiMDljckl1Lzg4dDRYVnIr?=
 =?utf-8?B?NmhtcDNzWVJKVkhDbmlqSi95OHF2YmpxOWgwOTdjWjRCbDNyL2ZoS1l3NDE5?=
 =?utf-8?B?bTd6Snl0UEVLQ01JbjhYMjExTnZxa2VEajY2aW1iVEZlNFpOSC9QOFZKdWhP?=
 =?utf-8?B?U1RmK0xBNW1tTitzdko2Tll5UTZudEtYSzZkTHUybE1zY0pDVGpoYzM1bXZO?=
 =?utf-8?B?aWRFWHEwZlhKOTVTVnFNSm41MG5oYTZHZjNzWlg4Yk01NnZxbEhSdjUxOWdZ?=
 =?utf-8?B?R2VBejhiaEJpNWlMMEFaMXVEMjJiT3J2Z2FRKzhRcXp3SThmNGNzR1o4QzE0?=
 =?utf-8?B?UG1ydjVmRi9UaG1JdjNyOW5KYzZFNDQvKzdIc0FLcVVFVE00cmJ3US9oNi9G?=
 =?utf-8?B?N3F2TVVKUnVCcWxhTEJ6cXIwdW5ONVJLdUMwRVJRK0cwQ2JxZk5pNE1jQmFv?=
 =?utf-8?B?ejJYbkRxWTgvcWFGUi9uUXBVNGd3SDBvVDJCUHRIVFdMMTlFV1F5Rzl3Tmh5?=
 =?utf-8?B?K3NpcE40UUErMHJxQ3p4NjFTNksxdVRXK0dYbEYxVE12YmR0anZGRDBuVHds?=
 =?utf-8?B?NXJ4dnF2eTgwdWM1S1I3U0dqZUZGcktOMVFFSHorblliaUVrb2VuSktOU0ky?=
 =?utf-8?B?UWl3ak1vRGhOL1RVRUFaUlFhZEdabmg1bHBQSm9DcG1lMXc3aWFIZi9TdHBL?=
 =?utf-8?B?N3hUTzVUeE9wVGpoYUh6OXd6T2x5aitIZldNWEZMbVZQaW1YaGZwclllc0Vs?=
 =?utf-8?B?eTBrczdzNnRFZFZOY0N4TDU2RWZ2UURudFVmVDVsbE93QUF3aERNc3RMeGdk?=
 =?utf-8?B?UG1Qb3pVVWIzZ09mN0pSbW1YZVBidVg3cU9FODBrRlg0ckFYenNCR1FYRFhD?=
 =?utf-8?B?UGR2Q1hiaEdoc0R6dXZnQXl5cHFkbFFvaW96TE1FWXlnK3o5ZjJxVThyTGow?=
 =?utf-8?B?a0pvYkhBLzJTK1pkVHdadVkvSkJNWklySkcyL2lIZ1M0M0k4M3AzZlNhYlZv?=
 =?utf-8?B?OW42aTFXcDhBUmVEbllSVlZ5MGY1bDBickxUcEZnUURtL2c0eHNQaW1HSEw2?=
 =?utf-8?B?bE82aEMrQmtEY3FCbG1vdFRweW52Z1BpbUk2TG51Q29Ma2xFdzhNaERKNFRS?=
 =?utf-8?B?QWdWc29sRjVFTnhmMnk1Zjl2RUJ5WFUzRU1sbW56aW1jZ0IvaUtkdlVNK2VB?=
 =?utf-8?B?dm1UTkIzdDhKV2gxZ0hsaklQNHRTdUFxY2c2UlB4dlVqMGhBVGxYNnhJWjZP?=
 =?utf-8?B?WjExUE9rbXdPTnE4ak91cUlmYVAwemhXSk8rYWUrM1Q3U2FXMVA3Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28224df1-5cfa-45db-b862-08de4ceb704a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 06:18:41.7576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a2FTWc31FTd5EiKyNxRe8Gy2u60QcFLYVU0olpOClRnGVkOd/CtTcPUrYhekyKv+tV1gtXIacgsbcrPNAznteg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8561
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

PiBTdWJqZWN0OiBSRTogW1BBVENIIDIvM10gZHJtL2k5MTUvY3gwOiBNb3ZlIHN0ZXAgMTIgdG8g
ZW5hYmxlIGNsb2NrIGhvb2sNCj4gDQo+IFF1b3RpbmcgS2FuZHBhbCwgU3VyYWogKDIwMjUtMTIt
MzEgMDI6MTA6NTktMDM6MDApDQo+ID4+DQo+ID4+IFF1b3RpbmcgU3VyYWogS2FuZHBhbCAoMjAy
NS0xMi0zMCAwNTozMTo0MS0wMzowMCkNCj4gPj4gPk1vdmUgdGhlIHN0ZXAgdG8gdG9nZ2xlIHBv
d2VyZG93biBzZXF1ZW5jZSBjaGFuZ2UgZm9yIEhETUkgdG8NCj4gZW5hYmxlDQo+ID4+ID5jbG9j
ayBob29rIHdoZXJlIGl0IGJlbG9uZ3MgYWNjb3JkaW5nIHRvIGl0cyBzZXF1ZW5jZS4NCj4gPj4g
PkRvIHRoZSByZXF1aXJlZCBjaGFuZ2VzIHRvIG1ha2UgdGhhdCB3b3JrLg0KPiA+Pg0KPiA+PiBU
aGlzIHNob3VsZCBwcm9iYWJseSBiZSBhIHNxdWFzaCBpbnRvIHRoZSBwcmV2aW91cyBwYXRjaD8N
Cj4gPg0KPiA+U28gcmVhc29uIGZvciBzZXBhcmF0ZSBwYXRjaCBpcyB0aGF0IHRoaXMgcmVxdWly
ZXMgbWUgY2hhbmdpbmcgdGhlDQo+ID5hcmd1bWVudCBvZiBjbG9jayBlbmFibGUgd2hpY2ggaXMg
bm90IGJlY2F1c2Ugb2YgdGhlIHNhbWUgbG9naWNhbA0KPiA+cmVhc29uIHRoYXQgY2hhbmdlcyBh
cmUgYmVpbmcgZG9uZSBpbiBwYXRjaCAxLCBoZW5jZSBhIHNlcGFyYXRlIHBhdGNoDQo+ID5mb3Ig
Y2hhbmdlcyB0aGF0IHdlcmUgYnJvdWdodCBhYm91dCBkdWUgdG8gYW5vdGhlciByZWFzb24uIEhh
ZCB0aGlzIGJlZW4NCj4ganVzdCBtb3ZlbWVudCBvZiBzdGVwIDEyIHRoZW4gSSB3b3VsZCBoYXZl
IHNxdWFzaGVkIHRoZW0uDQo+IA0KPiBIbS4uLiBUaGUgcHJldmlvdXMgcGF0Y2ggaXMgaW50cm9k
dWNpbmcgaW50ZWxfY3gwcGxsX2VuYWJsZV9jbG9jaygpIGFuZCBzYXlzIGl0DQo+IGlzIHNwbGl0
dGluZyB0aGUgc2VxdWVuY2UgaW4gdHdvLCBidXQgdGhlbiBpdCBlbmRlZCB1cCBpcyBsZWF2aW5n
IHN0ZXAgMTIgYmVoaW5kLg0KPiBJZiBpdCBpcyBpbnRyb2R1Y2luZyBpbnRlbF9jeDBwbGxfZW5h
YmxlX2Nsb2NrKCksIGl0IGNvdWxkIGFzIHdlbGwgaGF2ZSBkb25lIGl0DQo+IHdpdGggYSBzaWdu
YXR1cmUgdGhhdCBhbGxvd3Mgc3RlcCAxMiB0byBiZSBkb25lLg0KPiANCj4gSU1PLCBoZXJlIHdl
IGFyZSBtb2RpZnlpbmcgdGhhdCBmdW5jdGlvbiB0byAibWFrZSBpdCByaWdodCIuICBUaGlzIGxv
b2tzIGxpa2UgYQ0KPiBnb29kIGZpeHVwIGNhbmRpZGF0ZSB0byBtZS4NCj4gDQoNCkxldCdzIHNl
ZSBob3cgdGhlIGRpc2N1c3Npb24gaW4gcGF0Y2ggMSBnb2VzIHRoZW4gc2VlIGhvdyB0aGlzIGNh
biBiZSBkZWFsdCB3aXRoDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQo+IC0tDQo+IEd1c3Rh
dm8gU291c2ENCj4gDQo+ID4NCj4gPlJlZ2FyZHMsDQo+ID5TdXJhaiBLYW5kcGFsDQo+ID4NCj4g
Pj4NCj4gPj4gLS0NCj4gPj4gR3VzdGF2byBTb3VzYQ0KPiA+Pg0KPiA+PiA+DQo+ID4+ID5TaWdu
ZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPj4g
Pi0tLQ0KPiA+PiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5j
IHwgMzcNCj4gPj4gPisrKysrKysrKystLS0tLS0tLS0tDQo+ID4+ID4gMSBmaWxlIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiA+PiA+DQo+ID4+ID5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4g
PmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4gPmlu
ZGV4IGYzYmFiYTI2NGU4OC4uNWVkZDI5M2I1MzNiIDEwMDY0NA0KPiA+PiA+LS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4gPisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4+ID5AQCAtMzI4MSwy
MSArMzI4MSw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2N4MHBsbF9lbmFibGUoc3RydWN0DQo+ID4+
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4+ID4gICAgICAgICAgKi8NCj4gPj4gPiAgICAg
ICAgIGludGVsX2RlX3dyaXRlKGRpc3BsYXksIERESV9DTEtfVkFMRlJFUShlbmNvZGVyLT5wb3J0
KSwNCj4gPj4gPnBvcnRfY2xvY2spOw0KPiA+PiA+DQo+ID4+ID4tICAgICAgICAvKg0KPiA+PiA+
LSAgICAgICAgICogMTIuIFRvZ2dsZSBwb3dlcmRvd24gaWYgSERNSSBpcyBlbmFibGVkIG9uIEMx
MCBQSFkuDQo+ID4+ID4tICAgICAgICAgKg0KPiA+PiA+LSAgICAgICAgICogV2FfMTMwMTM1MDI2
NDY6DQo+ID4+ID4tICAgICAgICAgKiBGaXhlczogSERNSSBsYW5lIHRvIGxhbmUgc2tldyB2aW9s
YXRpb25zIG9uIEMxMCBkaXNwbGF5IFBIWXMuDQo+ID4+ID4tICAgICAgICAgKiBXb3JrYXJvdW5k
OiBUb2dnbGUgcG93ZXJkb3duIHZhbHVlIGJ5IHNldHRpbmcgZmlyc3QgdG8gUDAgYW5kDQo+IHRo
ZW4NCj4gPj4gdG8gUDIsIGZvciBib3RoDQo+ID4+ID4tICAgICAgICAgKiBQSFkgbGFuZXMuDQo+
ID4+ID4tICAgICAgICAgKi8NCj4gPj4gPi0gICAgICAgIGlmICghY3gwcGxsX3N0YXRlX2lzX2Rw
KHBsbF9zdGF0ZSkgJiYgcGxsX3N0YXRlLT51c2VfYzEwKSB7DQo+ID4+ID4tICAgICAgICAgICAg
ICAgIGludGVsX2N4MF9wb3dlcmRvd25fY2hhbmdlX3NlcXVlbmNlKGVuY29kZXIsDQo+ID4+IElO
VEVMX0NYMF9CT1RIX0xBTkVTLA0KPiA+PiA+LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBYRUxQRFBfUDBfU1RBVEVfQUNUSVZFKTsNCj4gPj4gPi0g
ICAgICAgICAgICAgICAgaW50ZWxfY3gwX3Bvd2VyZG93bl9jaGFuZ2Vfc2VxdWVuY2UoZW5jb2Rl
ciwNCj4gPj4gSU5URUxfQ1gwX0JPVEhfTEFORVMsDQo+ID4+ID4tICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFhFTFBEUF9QMl9TVEFURV9SRUFEWSk7
DQo+ID4+ID4tICAgICAgICB9DQo+ID4+ID4tDQo+ID4+ID4gICAgICAgICBpbnRlbF9jeDBfcGh5
X3RyYW5zYWN0aW9uX2VuZChlbmNvZGVyLCB3YWtlcmVmKTsgIH0NCj4gPj4gPg0KPiA+PiA+QEAg
LTMzNzksNyArMzM2NCw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfbXRsX3RidF9jbG9ja19zZWxlY3Qo
c3RydWN0DQo+ID4+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4+ID4gICAgICAgICB9DQo+
ID4+ID4gfQ0KPiA+PiA+DQo+ID4+ID4tc3RhdGljIHZvaWQgaW50ZWxfY3gwcGxsX2VuYWJsZV9j
bG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiA+PiA+KmVuY29kZXIpDQo+ID4+ID4rc3RhdGlj
IHZvaWQgaW50ZWxfY3gwcGxsX2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwNCj4gPj4gPisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0
IHN0cnVjdA0KPiA+PiA+K2ludGVsX2N4MHBsbF9zdGF0ZQ0KPiA+PiA+KypwbGxfc3RhdGUpDQo+
ID4+ID4gew0KPiA+PiA+ICAgICAgICAgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KPiA+PiA+ICAgICAgICAgZW51bSBwaHkgcGh5ID0g
aW50ZWxfZW5jb2Rlcl90b19waHkoZW5jb2Rlcik7IEBAIC0zNDEyLDYNCj4gPj4gPiszMzk4LDIx
IEBAIHN0YXRpYyB2b2lkIGludGVsX2N4MHBsbF9lbmFibGVfY2xvY2soc3RydWN0DQo+ID4+ID4r
aW50ZWxfZW5jb2Rlcg0KPiA+PiAqZW5jb2RlcikNCj4gPj4gPiAgICAgICAgICAqIEZyZXF1ZW5j
eSBDaGFuZ2UuIFdlIGhhbmRsZSB0aGlzIHN0ZXAgaW4gYnh0X3NldF9jZGNsaygpLg0KPiA+PiA+
ICAgICAgICAgICovDQo+ID4+ID4NCj4gPj4gPisgICAgICAgIC8qDQo+ID4+ID4rICAgICAgICAg
KiAxMi4gVG9nZ2xlIHBvd2VyZG93biBpZiBIRE1JIGlzIGVuYWJsZWQgb24gQzEwIFBIWS4NCj4g
Pj4gPisgICAgICAgICAqDQo+ID4+ID4rICAgICAgICAgKiBXYV8xMzAxMzUwMjY0NjoNCj4gPj4g
PisgICAgICAgICAqIEZpeGVzOiBIRE1JIGxhbmUgdG8gbGFuZSBza2V3IHZpb2xhdGlvbnMgb24g
QzEwIGRpc3BsYXkgUEhZcy4NCj4gPj4gPisgICAgICAgICAqIFdvcmthcm91bmQ6IFRvZ2dsZSBw
b3dlcmRvd24gdmFsdWUgYnkgc2V0dGluZyBmaXJzdCB0bw0KPiA+PiA+KyBQMCBhbmQgdGhlbg0K
PiA+PiB0byBQMiwgZm9yIGJvdGgNCj4gPj4gPisgICAgICAgICAqIFBIWSBsYW5lcy4NCj4gPj4g
PisgICAgICAgICAqLw0KPiA+PiA+KyAgICAgICAgaWYgKCFjeDBwbGxfc3RhdGVfaXNfZHAocGxs
X3N0YXRlKSAmJiBwbGxfc3RhdGUtPnVzZV9jMTApIHsNCj4gPj4gPisgICAgICAgICAgICAgICAg
aW50ZWxfY3gwX3Bvd2VyZG93bl9jaGFuZ2Vfc2VxdWVuY2UoZW5jb2RlciwNCj4gPj4gSU5URUxf
Q1gwX0JPVEhfTEFORVMsDQo+ID4+ID4rICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFhFTFBEUF9QMF9TVEFURV9BQ1RJVkUpOw0KPiA+PiA+KyAgICAg
ICAgICAgICAgICBpbnRlbF9jeDBfcG93ZXJkb3duX2NoYW5nZV9zZXF1ZW5jZShlbmNvZGVyLA0K
PiA+PiBJTlRFTF9DWDBfQk9USF9MQU5FUywNCj4gPj4gPisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX1AyX1NUQVRFX1JFQURZKTsNCj4g
Pj4gPisgICAgICAgIH0NCj4gPj4gPisNCj4gPj4gPiAgICAgICAgIGludGVsX2N4MF9waHlfdHJh
bnNhY3Rpb25fZW5kKGVuY29kZXIsIHdha2VyZWYpOyB9DQo+ID4+ID4NCj4gPj4gPkBAIC0zNDg1
LDcgKzM0ODYsNyBAQCB2b2lkIGludGVsX210bF9wbGxfZW5hYmxlX2Nsb2NrKHN0cnVjdA0KPiA+
PiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+PiA+ICAgICAgICAgaWYgKGludGVsX3RjX3Bv
cnRfaW5fdGJ0X2FsdF9tb2RlKGRpZ19wb3J0KSkNCj4gPj4gPiAgICAgICAgICAgICAgICAgaW50
ZWxfbXRsX3RidF9wbGxfZW5hYmxlX2Nsb2NrKGVuY29kZXIsIGNydGNfc3RhdGUtDQo+ID5wb3J0
X2Nsb2NrKTsNCj4gPj4gPiAgICAgICAgIGVsc2UNCj4gPj4gPi0gICAgICAgICAgICAgICAgaW50
ZWxfY3gwcGxsX2VuYWJsZV9jbG9jayhlbmNvZGVyKTsNCj4gPj4gPisgICAgICAgICAgICAgICAg
aW50ZWxfY3gwcGxsX2VuYWJsZV9jbG9jayhlbmNvZGVyLA0KPiA+PiA+KyAmY3J0Y19zdGF0ZS0+
ZHBsbF9od19zdGF0ZS5jeDBwbGwpOw0KPiA+PiA+IH0NCj4gPj4gPg0KPiA+PiA+IC8qDQo+ID4+
ID5AQCAtMzgwOCw3ICszODA5LDcgQEAgdm9pZCBpbnRlbF9jeDBfcGxsX3Bvd2VyX3NhdmVfd2Eo
c3RydWN0DQo+ID4+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ID4+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwNCj4gPj4gPmVuY29kZXItPmJh
c2UubmFtZSk7DQo+ID4+ID4NCj4gPj4gPiAgICAgICAgICAgICAgICAgaW50ZWxfY3gwcGxsX2Vu
YWJsZShlbmNvZGVyLCAmcGxsX3N0YXRlKTsNCj4gPj4gPi0gICAgICAgICAgICAgICAgaW50ZWxf
Y3gwcGxsX2VuYWJsZV9jbG9jayhlbmNvZGVyKTsNCj4gPj4gPisgICAgICAgICAgICAgICAgaW50
ZWxfY3gwcGxsX2VuYWJsZV9jbG9jayhlbmNvZGVyLCAmcGxsX3N0YXRlKTsNCj4gPj4gPiAgICAg
ICAgICAgICAgICAgaW50ZWxfY3gwcGxsX2Rpc2FibGUoZW5jb2Rlcik7DQo+ID4+ID4gICAgICAg
ICAgICAgICAgIGludGVsX2N4MHBsbF9kaXNhYmxlX2Nsb2NrKGVuY29kZXIpOw0KPiA+PiA+ICAg
ICAgICAgfQ0KPiA+PiA+LS0NCj4gPj4gPjIuMzQuMQ0KPiA+PiA+DQo=
