Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MP45C8zs+mn3UQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 09:25:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 833E54D72DC
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 09:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7BB10E13F;
	Wed,  6 May 2026 07:24:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZC++EuUb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD12A10E13F;
 Wed,  6 May 2026 07:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778052297; x=1809588297;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AMvUuvyQqZ9erIMDiEl8/3unsdZ3pNZviIw1nh3EAKM=;
 b=ZC++EuUbMYZ2nh3lo6w8ct9SIbSwjz8VltUpN1rBb7kqvaZLINWI+0lD
 1OEP/E7iTk+hCvVNLNNa1Z8llzyTANlJwTdxa7QIJxgL48bdqsyJ5Xm2e
 52pZiso8OBakiwSUS6CNOXU8Tmgm2l9ZxkxtSdMntmvFxEA0U8i2q106p
 fd0xHaYG0kz5B1IeyGmjMPm6q8jB9lzBhiqSo71+/kwE3h/wTSQmh8RD+
 yYat9qS1Q5XT9yNKn66BkkeBgZPnwKbaDUxJ0dYcbaULz1ExV81IbGq7A
 xUkLcYAvXEIuzJmdRq5NBes54eEaGFr6SrpSXeXB3gE9x0Rei/w3QXNFd A==;
X-CSE-ConnectionGUID: WAFKn7NZSyas7IQzOXbA9w==
X-CSE-MsgGUID: dpoE96/YQuSjLVRkgAw3Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="89674448"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="89674448"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 00:24:55 -0700
X-CSE-ConnectionGUID: wJE2G4njSJ+Jrugvqb3+aw==
X-CSE-MsgGUID: S7kB2HzhTQOOZ4eK14M9Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="241061003"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 00:24:55 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 00:24:54 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 00:24:54 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 00:24:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X3Pzr1pYv5HJqThLcaO7ETbFYVUSgl+7Xx4ILuyhEMh9/8ckwvLfYsXsr88hz09Vvb6+bsYMcyr2vR99hHw5RHmTr5AcCE9OoChqXymngcQVQtNiIFWlFQiNkBF6JBLSnsNiy+o284nyeI3gdrxvf5lpnDbVOxmESgjT2oZBhHCiluOfUKZm3UZlTnXbbpdIy/9BBkWgRA6Rb/CMKaMWOeUTM46Oa2xmLbxWc0vwU2vD0/26V75dI7Bg2F3nqaVi6k4k1+19233X4pQhZ8Qc9eqIZPeN9PrCvZ54ZQfoQaUvq0MrG2MjncF6yynmlKFxfq/risVrufe4oEeBbBw+VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AMvUuvyQqZ9erIMDiEl8/3unsdZ3pNZviIw1nh3EAKM=;
 b=AEXTQZxvn0ngJSnzdGI7ZxpuglCA6hU7Q4u4dxyu97Rm3a1JeODwDLcVPc+c5eze6//n0ndML9Zp/pa5EI7phnzXMARtGMdM1mcbSGh17R2semg9Ex9/x05qckCTqWk2YsYWqAG4yZT5wKheAIwuaMwJcgk43wAR7XGnRdTQKRovIq4umk+XDTvzxCWoqYX3u5yBno8srYFDrGNImK+yzive8UOxs5locaOVTOYDfXOmxOpH6v1QTx61Te5iGMCJban6eoF40GtqcHmI6m3RDL0OtAjT1dVd4j7WdPZo6fx6MyQjY4qP/MOs+ksHxRzW+JMBn2eG+RF43fl53qtkfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY5PR11MB6341.namprd11.prod.outlook.com
 (2603:10b6:930:3e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Wed, 6 May
 2026 07:24:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 07:24:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Subject: RE: [PATCH 3/4] drm/i915/psr: Apply Intel DPCD workaround when SDP on
 prior line used
Thread-Topic: [PATCH 3/4] drm/i915/psr: Apply Intel DPCD workaround when SDP
 on prior line used
Thread-Index: AQHczJpvHUV9B/LZ2kyao+Iuw91eQLYAuQYw
Date: Wed, 6 May 2026 07:24:52 +0000
Message-ID: <DM3PPF208195D8D312A4D274ECBF86DE84FE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-4-jouni.hogander@intel.com>
In-Reply-To: <20260415054000.400070-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY5PR11MB6341:EE_
x-ms-office365-filtering-correlation-id: 47bd4f37-9b9b-42ce-f6a2-08deab40906e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: YBlHb1W5ggDhtctZ4FcrSlgDf9atdqAN9Zm9y1wnrpqTuXTlQLwk6z1f09oWAqYZI7mEtxYak5RhhzniZg5iGexOeOrriDFXH2zQpUt1NzPyhZI/qUu0xfdSFl5xMxtVxmaJ4uLR6BPTMCZYq+m38Qe7rnfWUIhB/Gi+nJudUuC5dwBw2WsX9aIf+d5V798aOhVxK8b3PR2z0Htx9HCAVRvkf5Tbowk3BJT0W3reeD7QDQaTjI1bmJMrhXyUDXQf27ZVQ66JdYNvXK7988V1CBa0BBQKUKeF7Bl8Z68mwaRBFasTwi5YCANMFbcpiFkf5ztNjnJ0OZL+aXl2zTtHBQBymKaDgqyYS75yl6xRDR4QLI7C5Gl3ZKzC3BZ2WuIw6YcVDD2gpUMemRwuN54A9c+dxYSrs0OAJB0ojaQ6qY+idt9E6+vRROb40AR8r4GKwxwDyXNKtetATonvTryOb4SnoiDxWnwkmkBXKYA/gdiy2RTgKpVs1x5O63P9fDIYwn68WzwnYD9xge27WIxbcgFh4ZHoeM6zSVzVp/vO5NO6NkdwNGCwNpIG+5JO2kx3TZ1qQ/AS4z9VbbmC4AQvcff9Cps8SiO5qPrvDX3f7FG6L05iMM9ICY05/C5qjR4IHHjfzf36HYVz10A1DfLUg6XxBI8Mld4wEQrsn52SheqhgyVzYZMBDjpuqdTNVjuR1BDD7CEL0AUhbR2zX/RqHJLcV94YYc/HNm/saayu8HzjO9k1UIC2ZYwwsMaDRd5S
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VE1IL3ZEZE1pemNxVStZMDNzdmJGbHN5VWdIbVE5enFqWER3WksrUml0d3FX?=
 =?utf-8?B?UHNSQkE3VG9Dbm0yUEFYd1RyUDhHZ21UWlMydk5HWWV3YXdteU5lOXhlNE5J?=
 =?utf-8?B?eTdWSlhRZFIwVDlOODR0bjF4UXBwZEF5d1pUeW96d1RiMThZV0VXbG40S2c4?=
 =?utf-8?B?SmFMaVZSM3hYMVozWTZWeVJCQlRXVXlqVjE2eXp1ZFIvd0hxVGFnVE0vaFNU?=
 =?utf-8?B?Z3VOMGd3anJBMHVWUTJBaFNKYnA3ZWp2bU5xVTc4KzdqUU9iNFRxVkhhUXZm?=
 =?utf-8?B?V1RKTDlhL05sa29NemJrdElHdDd6U1A2N1JDSG5OOXQ1NkM0bXpCbHlPZXNi?=
 =?utf-8?B?clZ4NUY4V1dJMlhPcWd0UkZaZm5kK1ErVTUwRXJrRitLS2x6eUlPTWVMdTdS?=
 =?utf-8?B?SER2eHJIZFcwUHp5OUp1cFRyaEdNM29lVVBoVEpBc3NMRWxHQTlSc3R1amFz?=
 =?utf-8?B?QXN3VXJEN09jUE5tRWd4MFU2L2JjNkFwSGdKQUovR1gzOEJBVmU5Zjg1Nmwy?=
 =?utf-8?B?S3BKSGtjT1VPSHZEbVkwR0xjZjA3aGFGdGpoVFVXYW5WTFlWa3h6ZzR6QnZO?=
 =?utf-8?B?VXp1NXBhbk02VVJsWkFFT0lJQlJMczJNWXV6WTNmdGdiVUwrcytLWHdlSGN0?=
 =?utf-8?B?dHM0d2VoUW0zSGJTS005b1NYODZaZFkzT2hkMFF3Y21vNzJ1THJBai9lTVNO?=
 =?utf-8?B?U0dGbHpoOU5PQTc5SXJnMSsyaEtxVURpUmwveHN6OXFSeHc5WGNyYkdJaHVr?=
 =?utf-8?B?T0R1MEFOOWd5cEhXUjBLdVZlWXMyUEo4QTM5WjU4SVhmUTFqSjNXMENobnVS?=
 =?utf-8?B?NEVKc1lqeGZ6cWFGTHEzSFBmbVZzTEtZRkpMUGl4aXVVbjFNN1RsVmZrMXg4?=
 =?utf-8?B?S3VHVk01aVh0WmxWNEZuT2Nhak5CWHIrdzBEbU5DTktkMlVHczdIY0xGa28z?=
 =?utf-8?B?d3E5VXFjWWtLM3MwUWlnUDB0K2tWQW1wRCtxM1M0ZVY2aVZpT2s3SkFNR1JK?=
 =?utf-8?B?ZGNvWkJSL01xbUowSStzVlQ3UVplendVYTF2bjZyZzZxSmRwdDEra2tlQjhL?=
 =?utf-8?B?NDVvbVZieCs1ejV4WDdkQmlxU3dsZjJSbS8rNWkvVDQ3WU9Kd1dyT2ZPTzll?=
 =?utf-8?B?MHBrQk1oRTZiQ1FOQUJSZ1h5RmFJYXlYbU85QVd4YnpETU9NVk5ENjNFcGVv?=
 =?utf-8?B?VTNjNXEzRy9yQzNYWGREMUpsNWRXSzNHMC8zc1JmL0RjSXZvZU9YNENPZHhj?=
 =?utf-8?B?U2U2NjkzQ0syN0RCVVlzQzN5UjFxWnhZUllzY3lEZG5oeVBOK3Zjamt0SG9j?=
 =?utf-8?B?eHNDQVBZUklzVVFFWEhwamYrS0dKbDVHZkhBei8vL1JJSEh2T2M5WW15SWN4?=
 =?utf-8?B?ZVZ6c0RqTXU0VVNuYVZaZHR5bjJWN2ttWFZKN1R6R1FIUitHTVlyUGNsOE03?=
 =?utf-8?B?M2x1aWN4QjBnVG5BWGFUV053MzU0RXN2SCt6NUNIcFFlWEx0VXBvQm5nSGJM?=
 =?utf-8?B?a1JhT29XSUk0cDJrdkUrbjhRaExwSGFYVDQzeSs3UGd0SmpabHZJa2NZOWVy?=
 =?utf-8?B?cHlLcU1wU0Y0MkdrT3BXRWNsb0VwcjlVZ0JocW9wazl0d2JBMWlqVWNsL3Jw?=
 =?utf-8?B?dXlUeFM2Vk41TCtpSG42U3AveTBZUzAyTEtXdzl1dUxKS29HU3ZVY2MzYVQ2?=
 =?utf-8?B?Q3JVekNxMDRXY0oxMG5TM3BFdTZDa1ltWHpGL2VGUmZvT1ZTTzkwRTcrUnRP?=
 =?utf-8?B?dlNwdlZxOE1TcmRxdDlNYmh6U25vZDZkb1RpSlBkYlR6SkNwTlgrRm5DU1VT?=
 =?utf-8?B?SjdvdFBRMm5EQ1RoT1N3MjBRVW1oM1NhMjBQR0xMRXpYenRjSmRxdWc4bE9l?=
 =?utf-8?B?enZYbDEwYng1ak1NVTl4WG9uTTJXQ2JXWGZXcDhPZEg3algvWTdTc1NnTExY?=
 =?utf-8?B?MXZvcTdVTkViRU5Qb2NYT1ZmMlo4Qi93UG5Na3BEbTl2cXllRlQ2K2hxb0lr?=
 =?utf-8?B?TVUvd0RjZWpxbGdYQ1VNaWw0ZHVPaGlLMUtxU1VWQmJkS1J2UDdrOE9ZRTNn?=
 =?utf-8?B?NWpLQzZoV0VGNTBWN2s1TUMvNm4yeVhDTGwrckhJOGZSMFpHaFEveFJDcHd0?=
 =?utf-8?B?VnJUeVlHRUx4dHRMKzhoajFqUVc2SEVVQ3BhdEZBdVA5UEpCRExwS01SMVBp?=
 =?utf-8?B?T3VDc3VUaVAwamRQV2NXSDBvaklxaS93RHFlUnNsYncwWVpsVzJ5ZDBSZlpa?=
 =?utf-8?B?V3Jlek9xWHUwT0dpYUlYZW5yT0lnR3N0bGlUV3hrYVQwZE1DVDJkUnVHZDZ5?=
 =?utf-8?B?eEVBWWpzZzdtU1ZvR0pJSWdiY2lwSFBZQ1RMSURuOHgydFF2SytVQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bSte7fo4p62iNNxmr6JmUcLsA4J/fazvPaFhbyavKnbkpN6Jg1FGq/9aZ7Sw0K3vNnxo0iXXrte0VXFonRki7ON9WWHUK+sY3pj4TX3trCvube4vfPBkGo/JjG9uLYPkcGjLJ9dHflOKrHeEiTgQYQ/+6RaowR9S7ChMQj/PtQ6642DXZ8l7b+NGo/eNe/Auq3nI1h7ax5XeJIFNl1V5rVRhKqyVJsxUETApht22rSmy5b1w310IbjcK5K7TLJ7poZjjEh0GsbhKfQU+2sY9D/5MGPeJWBdicFehDrUJz/zVFPPGPk/s8oim7KFmnRccq4284d5Lz3NLpyJszUhTFQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47bd4f37-9b9b-42ce-f6a2-08deab40906e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 07:24:52.2178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QpyV3bHf4o8Dixp2ABX9EisNEFTjKtnn5Qx+5G8DNZO3B4FzyE+EP4+9aWzMCe74YZychjUo88YSWLS7Qo64jA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6341
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
X-Rspamd-Queue-Id: 833E54D72DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

PiBTdWJqZWN0OiBbUEFUQ0ggMy80XSBkcm0vaTkxNS9wc3I6IEFwcGx5IEludGVsIERQQ0Qgd29y
a2Fyb3VuZCB3aGVuIFNEUCBvbg0KPiBwcmlvciBsaW5lIHVzZWQNCj4gDQo+IFRoZXJlIGlzIElu
dGVsIHNwZWNpZmljIHdvcmthcm91bmQgRFBDRCBhZGRyZXNzIGNvbnRhaW5pbmcgd29ya2Fyb3Vu
ZCBmb3INCj4gY2FzZSB3aGVyZSBTRFAgaXMgb24gcHJpb3IgbGluZS4gQXBwbHkgdGhpcyB3b3Jr
YXJvdW5kIGFjY29yZGluZyB0byB2YWx1ZXMgaW4NCj4gdGhlIG9mZnNldC4NCj4gDQo+IEZpeGVz
OiA2MWU4ODczMjllMzMgKCJkcm0vaTkxNS94ZWxwZDogSGFuZGxlIFBTUjIgU0RQIGluZGljYXRp
b24gaW4gdGhlIHByaW9yDQo+IHNjYW5saW5lIikNCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwu
b3JnPiAjIHY1LjE1Kw0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAxZjNmMGQzNWQ1MmEuLjM0
MTE4NjYyMmVkNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IEBAIC0xMzg1LDkgKzEzODUsMzYgQEAgc3RhdGljIGJvb2wgcHNyMl9ncmFudWxhcml0
eV9jaGVjayhzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAlyZXR1
cm4gdHJ1ZTsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgYm9vbCBfY29tcHV0ZV9wc3IyX3NkcF9wcmlv
cl9zY2FubGluZV9pbmRpY2F0aW9uKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IC0J
CQkJCQkJc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICtzdGF0aWMg
Ym9vbCBhcHBseV9zY2FubGluZV9pbmRpY2F0aW9uX3dhKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLA0KPiArCQkJCQkgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9y
KQ0KDQpTaG91bGQgdGhlIG5hbWUgYmUgYXBwbHlfc2NhbmxpbmVfaW5kaWNhdGUsIHNpbmNlIHlv
dSBhcmUgbm90IGFwcGx5aW5nIHRoZSB3YSBoZXJlIGp1c3Qgc29ydCBvZiBjaGVja2luZyBpZiBp
dCBuZWVkcyB0byBiZSBkb25lDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gIHsNCj4g
KwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gaW50ZWxfYXR0YWNoZWRfZHAoY29ubmVjdG9y
KTsNCj4gKwl1OCBlYXJseV9zY2FubGluZV9zdXBwb3J0ID0gY29ubmVjdG9yLT5kcC5wc3JfY2Fw
cy5pbnRlbF93YV9kcGNkICYNCj4gKw0KPiAJSU5URUxfV0FfUkVHSVNURVJfQ0FQU19QU1IyX0VB
UkxZU0NBTkxJTkVfU0RQX1NVUFBPUlRfTUENCj4gU0s7DQo+ICsNCj4gKwlpZiAoaW50ZWxfZHAt
PmVkcF9kcGNkWzBdID49IERQX0VEUF8xNSkNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsNCj4gKwlz
d2l0Y2goZWFybHlfc2NhbmxpbmVfc3VwcG9ydCkNCj4gKwl7DQo+ICsJY2FzZSBJTlRFTF9XQV9S
RUdJU1RFUl9DQVBTX0ZBTExfQkFDS19UT19QU1IxOg0KPiArCQljcnRjX3N0YXRlLT5yZXFfcHNy
Ml9zZHBfcHJpb3Jfc2NhbmxpbmUgPSBmYWxzZTsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCWNh
c2UgSU5URUxfV0FfUkVHSVNURVJfQ0FQU19QU1IyX1dJVEhfRUFSTFlfU0NBTkxJTkU6DQo+ICsJ
CXJldHVybiB0cnVlOw0KPiArCWNhc2UgSU5URUxfV0FfUkVHSVNURVJfQ0FQU19QU1IyX1dJVEhP
VVRfRUFSTFlfU0NBTkxJTkU6DQo+ICsJCWNydGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9z
Y2FubGluZSA9IGZhbHNlOw0KPiArCQlyZXR1cm4gdHJ1ZTsNCj4gKwlkZWZhdWx0Og0KPiArCQlN
SVNTSU5HX0NBU0UoZWFybHlfc2NhbmxpbmVfc3VwcG9ydCk7DQo+ICsJCXJldHVybiBmYWxzZTsN
Cj4gKwl9DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBib29sIF9jb21wdXRlX3BzcjJfc2RwX3ByaW9y
X3NjYW5saW5lX2luZGljYXRpb24oc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsDQo+ICsJCQkJCQkJc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yKSB7DQo+
ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGludGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rv
cik7DQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5
KGludGVsX2RwKTsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRf
bW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+dWFwaS5hZGp1c3RlZF9tb2RlOw0KPiAgCXUzMiBoYmxh
bmtfdG90YWwsIGhibGFua19ucywgcmVxX25zOw0KPiBAQCAtMTQwNiw3ICsxNDMzLDggQEAgc3Rh
dGljIGJvb2wNCj4gX2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5kaWNhdGlvbihz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2QNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiANCj4gIAljcnRj
X3N0YXRlLT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUgPSB0cnVlOw0KPiAtCXJldHVybiB0
cnVlOw0KPiArDQo+ICsJcmV0dXJuIGFwcGx5X3NjYW5saW5lX2luZGljYXRpb25fd2EoY3J0Y19z
dGF0ZSwgY29ubmVjdG9yKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgaW50IGludGVsX3Bzcl9lbnRy
eV9zZXR1cF9mcmFtZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgQEAgLTE2ODcsNw0KPiAr
MTcxNSw3IEBAIHN0YXRpYyBib29sIGludGVsX3NlbF91cGRhdGVfY29uZmlnX3ZhbGlkKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiANCj4gY29ubl9zdGF0ZSkpDQo+
ICAJCWdvdG8gdW5zdXBwb3J0ZWQ7DQo+IA0KPiAtCWlmICghX2NvbXB1dGVfcHNyMl9zZHBfcHJp
b3Jfc2NhbmxpbmVfaW5kaWNhdGlvbihpbnRlbF9kcCwNCj4gY3J0Y19zdGF0ZSkpIHsNCj4gKwlp
ZiAoIV9jb21wdXRlX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lX2luZGljYXRpb24oY3J0Y19zdGF0
ZSwNCj4gK2Nvbm5lY3RvcikpIHsNCj4gIAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiAg
CQkJICAgICJTZWxlY3RpdmUgdXBkYXRlIG5vdCBlbmFibGVkLCBTRFAgaW5kaWNhdGlvbiBkbyBu
b3QNCj4gZml0IGluIGhibGFua1xuIik7DQo+ICAJCWdvdG8gdW5zdXBwb3J0ZWQ7DQo+IC0tDQo+
IDIuNDMuMA0KDQo=
