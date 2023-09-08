Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E1D798795
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 15:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7351310E8A5;
	Fri,  8 Sep 2023 13:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 641FF10E8A7;
 Fri,  8 Sep 2023 13:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694178334; x=1725714334;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Sv+dGaDXlHjmXB/bmuanrsxwlkvxuZrvGzifb5x/WOU=;
 b=mtx7vMWNNqYRqyTzCJwrZ8Z9TTipv92qoXASxvhjeePbc6qfG+6+pfLH
 uBJ6xwWYYsoxKLj7kSkJVVrFMQgM1PU3LRle9Kj6v4G4G4pqM5XaUj/nJ
 nk0qfjkSC1aig347S4oF+QH1MmyplOKdfQzt+jGF85oscVaOW2/Dalcko
 QOSA2qCAmRVU4kM10nV7N9gaBr/Qr1iR5ZwqGVMVR/1eycVyarMeQfw7G
 oX/fCNpDT8OnDTD3L5wn0fl0YFs/Nge7uI3drnU68kGLOFTa1ErjkqaOf
 i/Z8dJAkp/wNdjX1pWFzmrhb1z10oE1BNOVtN77kJdTsmRPHMinD9BtpE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="444079854"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="444079854"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 06:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="812562427"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="812562427"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 06:05:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 06:05:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 06:05:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 06:05:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/pkmm4xixJr0oZ5VkqYo1WN69r6O9MsekmhkZKeR0Nm7VTIW981X+IP/p/2b3culbdDMT7Hy6zsPsrbWVKcsk+vdWUD+m5Gh+jvIsIazWT0JlUJ6up+Y0AVFHUcomz15rqzTKxJb2kUwGnVBDedZyvbVk7BI+cZa5hBUq1PvanfbV/c3u01yW1/NWf3xnGdSfb1gi2Cd8O+OI+S9dMlG2dJBwIcn+A22WQE2u2vZa/sdN8D/Q2KVvaFF3dVeHQSHoZdOZFS2gokYj9BplN71TFnMDxDBTcYADbCiVZqCmG4ltcilq7FjqXRDbn5Q8YOpqd8HXxX2/QPG1Wq3o9Lxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pNlX587cIcbf98raZKBEvN0Kn5Hpp8rrSOhPg70jE2c=;
 b=YygFN5rhh0a4i9G33fO7g7+iGnntSvTrD/M34vXtjp26C6i4KdUZfagvUxMVGTD/TryiAQ+1R62kd0Kbm5USY5tlis2oZ5i0nhorTeq/a7OHRAapmHoWZQzHsy1mfkpQ6fIJiPCUjLX5rGjqMjKt6A3cyOCGXkDjHVS+qp5nVc9MA5Ym6bxOFyChUzMj9W+6mlMZ/LhJdORjCT9x/iNDO7JPyJwpb+rfOjr9SuOWKj/sj7H2DdsqOPfWWFB+7QaZ5jNeqmBvbFLDjn28FvuSbC2NUEnEQ9iT2529UbXqg8jHlTgZm8RLtxiRPhUbQZYVEfz2GHZ4fmOUm8qecz9wLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB4921.namprd11.prod.outlook.com (2603:10b6:806:115::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 13:05:29 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b535:230:d75d:bba0]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b535:230:d75d:bba0%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 13:05:29 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230907153757.2249452-10-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-10-lucas.demarchi@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 8 Sep 2023 10:05:22 -0300
Message-ID: <169417832299.3887.5746374523005252390@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0050.namprd11.prod.outlook.com
 (2603:10b6:a03:80::27) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB4921:EE_
X-MS-Office365-Filtering-Correlation-Id: 51b722c6-d280-4060-421c-08dbb06c465f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9HgJ4farFXHqV6k2wR1uLqDQBstAc16fun1g6n6SXHT3mxx2A/kYO/dPoWMZEtLK31SczVXoBU1c3DS1Izms9zb2Y7rwgBCxDdpRCT4GNrTaIsWRMyahcbZyArl/1dH2wXPjQPpcbHxq05WVu8oNTjnJNZjiUxDMzZmbE1+4bfdOHcXKz5epE1H7DtE21mnO2bjnwYZoiD9wSkMbJTw/bizNVYtE8jpY3Y5v0QQUhsJocdArzm8qlyvm5E+oQtmHfGmU0NW0W2CoS5G98fWQYKDlyAztu59gf/ORjW2QN6o0SnbFZvKPwnPbBcMxNbMzNeOxCy4ihX7yp6xIN0Bj2XfzMjnaj4E9lqmJbMOaRx7Lohknz2vgkmTXgxWSLMjF+oQpDqbrb6asIqtzY1Gz60bK0NiDtUFoMVIhqDhPEiJKQAKWgrqzOkA3UjhnRM7FQUwP6AmrmdAWxVQON3CHhYx6BQ93bvQPE/LCulk2titIAjUt7iOrIlaeX6r/dJ5CBkFZVcIKOM+Z0+1z6+ow3XDapYkIX+rw41m9WuSR3FBxAvzCZfINqRONe5EVxoxE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(366004)(376002)(396003)(39860400002)(346002)(451199024)(1800799009)(186009)(4326008)(450100002)(8676002)(8936002)(26005)(107886003)(5660300002)(83380400001)(44832011)(6512007)(9686003)(66899024)(41300700001)(6506007)(6486002)(66556008)(66476007)(38100700002)(82960400001)(66946007)(6666004)(33716001)(316002)(478600001)(86362001)(30864003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDVMTTYzS0pySHVVK2M1SncyMi9QOGsyVjlhQ0E0akxxVjlaQlpSakE1T0do?=
 =?utf-8?B?a0dkUFBkK1Mvalg3dDFwOHdPOHpTdStVcUp6QVkvb1VkeFVzSHEwRWRCUzlI?=
 =?utf-8?B?dXZOTi9XbmFka2JRdDVPMHJvUGdiOWpiQ2Q4bWROaVBRYTM2YStnT1hZelBi?=
 =?utf-8?B?RlZVVytZek1ieWlhMW52YS90a3NQMEJaN3c1b3BhRTZoeWxQdDVQcVIybHVL?=
 =?utf-8?B?ZGpsOFRzT3Y0VlQvazlnZ0FjNEFYdlFhZ0UvUC9RZEtjZEF3WjdVL05GaEhX?=
 =?utf-8?B?QjVBbytDbmIxOTgxSWNTZDhQRUxodG5YcFNxcTRZNVBpZlpVSU1qRS9OMVd2?=
 =?utf-8?B?d3dHaUlhRi9qS0pBODQ4MWVCODNZai96bXRaSHllZTdKOVBtRkpnaDlPR282?=
 =?utf-8?B?VDkrQlNoSmcvbHBVTnp5WUtBaTVjbENmbHd0ZHhLOHdRMVoweWpUS2ZMZ3NV?=
 =?utf-8?B?TWZEK2wydHkyNlMrSE15eExLSVFVT013N25IaldTZWtoYmxxUk1uTDE3SUlZ?=
 =?utf-8?B?ekJwbWFXaVpxd1dVSkxJTUR0cTlVVjlhTks3T0xHa3RQMVQzWHF4cUd1NG5U?=
 =?utf-8?B?OHAvNG1VakdHT0ovZy9FSjBnWDFCanBMcWR5Ky9HQXhyQ0EwNzlVMmhXU2J3?=
 =?utf-8?B?MktsajBJM0xSK2VYTTdiTkF1UXJnWHBKdDNka0x5dUZwMGdWU2lQajZOemZM?=
 =?utf-8?B?djBONlY2VDM1VTB3OURPQnQzUWMvK2U3REZSM1JLa05nLzEwVUlDVy9Vdmpw?=
 =?utf-8?B?eEFIWTUySzFZeGdOTDY2Yktxa0ZxMWdadGZOYkNndkd3M1hHaFJ6K2N2WE1Y?=
 =?utf-8?B?am15a1JZTGE3ZGx1enhJY1RWMC9tMktjZkw3SmFPWlZIazhId1ZIZXJEZHVa?=
 =?utf-8?B?NmZCT01kdGNudTJTN0FvckdVc2lpSG5jc25VY2l3L2F3U1JwN2dWOXRxUVpK?=
 =?utf-8?B?Q2hsV2JkOEpuU3RyL3NMOGl2SkZUT21xckI5R0JqVXRPY0UyUFZoSHVzVXlE?=
 =?utf-8?B?YjFJQUl2aitacGVRck9Bb2Y5UFpLTTZzVy9jS2FkMVFHaDVEdGtyRy9TVm5E?=
 =?utf-8?B?enJCbTY1ZXk3VEhmRmlpeDQ0bjNaYWRvL0x6ZjNNMGtDa0NrL0t3SHJvMmx1?=
 =?utf-8?B?cS9aMjFzVHIrSUpCUldOWnBPTnpkempqMnZwck0xNVhiVDdCZ0hpMDhXUWdZ?=
 =?utf-8?B?UGVPeVE0WHB2anlvUzdxVjFyTEhSNUR6S1BESVFPRGdzSm04d2FCZ1RUQmth?=
 =?utf-8?B?ZDZ4MGcySEpwZGc5WnVKejhGU29GSzlKWHdEUU9SZHRtLzliU2xidUdhSTgx?=
 =?utf-8?B?elZUa1gvZzJDMnFPK2lDWnY1WGJydWVkSVdSd090TDdZSGlXUENjWjFZVEpX?=
 =?utf-8?B?Wmh5K2hYMVp6K3lxSWg3N0ptR0hyTGFpOGpwVnhIc0M5SzRjQXFPdktHWlJ2?=
 =?utf-8?B?Y28yUTBYUkVLUDRjRU4zbGFxMnpJcUFhN0Z0N3poeUhZcWFZK3V1ZDYzUmxZ?=
 =?utf-8?B?VTAzMmtMdUpBVitvb3haZzZjNk5LRktselZ4WnlBa1JkWWhWTk55RlRNeWhP?=
 =?utf-8?B?Zjlqc3B5dE9rQlFEWGRwdm44dXAvY0JpVE91U2s0NXJYeTRpSlQ1N2c5clYx?=
 =?utf-8?B?TU00Wmg1TzlaUU1La0ZrNnY4RzZRbVNLc3VGNkNHQ3o4RzVHeWNmYVlSVWJG?=
 =?utf-8?B?LzZtbmlQcWs0RWU2OVJhQlBHSjRsbGdtN3UrQ3RtU3pXeVpIdGc3cVlwVG55?=
 =?utf-8?B?dDB1STZzZHBvUFBGaHBmdjRZOU1wamdpdEttejNweE9UVU40YVlzRkhUTFhX?=
 =?utf-8?B?Z01DcDdHOW9taTFmdVdkbVBnM0VsTDUxSDVNU1ZQeUlINlZibFhWU2hPUnQ0?=
 =?utf-8?B?VTNKa2p0WFJjV09uaUJlV0JTMGFDMERoYXpsQ0xLemNkSjJuNnlyVzhjNEVR?=
 =?utf-8?B?bzJwUlFBZXFqZGFlOG9wOHI5L1NPV083MEMwdlR4NVVrS2ZIYjFlUjFuUjlQ?=
 =?utf-8?B?NUdpUlFPVER4dDhzTGZ4TFBBZFBBZ2dNZG41eWZyTU1idWRnTWcwb3Y0OVdS?=
 =?utf-8?B?VjduZDNNOVV3bjBXUFpwaVlqVUVmT0hSV1VsVndzdzBtTUhWSWkwcEZIUkFa?=
 =?utf-8?B?MFZCQjJNYlZvQ3lmdjFMOEVLRjhKMFVLRkp6S0c1KzFDOW1mbDdmaDdFNHV6?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51b722c6-d280-4060-421c-08dbb06c465f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 13:05:29.1961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YexotsECchTdQIO2CViduEJfYc0p3WoQoAnjnMoaDGu8XpwRpdoDgrjhXdKnx+jcnMhWoZzjV0y3MOq59PsK6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 09/27] drm/i915/xe2lpd: Move
 registers to PICA
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-09-07 12:37:39-03:00)
>Some registers for DDI A/B moved to PICA and now follow the same format
>as the ones for the PORT_TC ports. The wrapper here deals with 2 issues:
>
>        - Share the implementation between xe2lpd and previous
>          platforms: there are minor layout changes, it's mostly the
>          register location that changed
>        - Handle offsets after TC ports
>
>v2:
>  - Explain better the trick to use just the second range (Matt Roper)
>  - Add missing conversions after rebase (Matt Roper)
>  - Use macro instead of inline function, avoiding includes in the
>    header (Jani)
>  - Prefix old macros with underscore so they don't get used by mistake,
>    and name the new ones using the previous names
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

git show --word-diff made it very easy to review this :-)

Heads-up: this will need to be also applied to the recent addition of
XELPDP_PORT_MSGBUS_TIMER.

With the above suggestion,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 83 ++++++++++---------
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 57 +++++++++++--
> drivers/gpu/drm/i915/display/intel_ddi.c      | 20 +++--
> drivers/gpu/drm/i915/display/intel_tc.c       | 16 ++--
> 4 files changed, 114 insertions(+), 62 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index e6d3027c821d..0ea00feb1ace 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -100,7 +100,7 @@ static void intel_cx0_phy_transaction_end(struct intel=
_encoder *encoder, intel_w
> static void intel_clear_response_ready_flag(struct drm_i915_private *i915=
,
>                                             enum port port, int lane)
> {
>-        intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
>+        intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane=
),
>                      0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_=
ERROR_SET);
> }
>=20
>@@ -108,10 +108,10 @@ static void intel_cx0_bus_reset(struct drm_i915_priv=
ate *i915, enum port port, i
> {
>         enum phy phy =3D intel_port_to_phy(i915, port);
>=20
>-        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane)=
,
>                        XELPDP_PORT_M2P_TRANSACTION_RESET);
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915=
, port, lane),
>                                     XELPDP_PORT_M2P_TRANSACTION_RESET,
>                                     XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>                 drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.=
\n", phy_name(phy));
>@@ -163,7 +163,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_priv=
ate *i915, enum port port,
>         enum phy phy =3D intel_port_to_phy(i915, port);
>=20
>         if (__intel_de_wait_for_register(i915,
>-                                         XELPDP_PORT_P2M_MSGBUS_STATUS(po=
rt, lane),
>+                                         XELPDP_PORT_P2M_MSGBUS_STATUS(i9=
15, port, lane),
>                                          XELPDP_PORT_P2M_RESPONSE_READY,
>                                          XELPDP_PORT_P2M_RESPONSE_READY,
>                                          XELPDP_MSGBUS_TIMEOUT_FAST_US,
>@@ -199,7 +199,7 @@ static int __intel_cx0_read_once(struct drm_i915_priva=
te *i915, enum port port,
>         int ack;
>         u32 val;
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915=
, port, lane),
>                                     XELPDP_PORT_M2P_TRANSACTION_PENDING,
>                                     XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>                 drm_dbg_kms(&i915->drm,
>@@ -208,7 +208,7 @@ static int __intel_cx0_read_once(struct drm_i915_priva=
te *i915, enum port port,
>                 return -ETIMEDOUT;
>         }
>=20
>-        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane)=
,
>                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>                        XELPDP_PORT_M2P_COMMAND_READ |
>                        XELPDP_PORT_M2P_ADDRESS(addr));
>@@ -259,7 +259,7 @@ static int __intel_cx0_write_once(struct drm_i915_priv=
ate *i915, enum port port,
>         int ack;
>         u32 val;
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915=
, port, lane),
>                                     XELPDP_PORT_M2P_TRANSACTION_PENDING,
>                                     XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>                 drm_dbg_kms(&i915->drm,
>@@ -268,14 +268,14 @@ static int __intel_cx0_write_once(struct drm_i915_pr=
ivate *i915, enum port port,
>                 return -ETIMEDOUT;
>         }
>=20
>-        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane)=
,
>                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>                        (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITT=
ED :
>                                     XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMI=
TTED) |
>                        XELPDP_PORT_M2P_DATA(data) |
>                        XELPDP_PORT_M2P_ADDRESS(addr));
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915=
, port, lane),
>                                     XELPDP_PORT_M2P_TRANSACTION_PENDING,
>                                     XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>                 drm_dbg_kms(&i915->drm,
>@@ -288,7 +288,7 @@ static int __intel_cx0_write_once(struct drm_i915_priv=
ate *i915, enum port port,
>                 ack =3D intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2=
M_COMMAND_WRITE_ACK, lane, &val);
>                 if (ack < 0)
>                         return ack;
>-        } else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(por=
t, lane)) &
>+        } else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i91=
5, port, lane)) &
>                     XELPDP_PORT_P2M_ERROR_SET)) {
>                 drm_dbg_kms(&i915->drm,
>                             "PHY %c Error occurred during write command.\=
n", phy_name(phy));
>@@ -2470,7 +2470,8 @@ static void intel_program_port_clock_ctl(struct inte=
l_encoder *encoder,
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         u32 val =3D 0;
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PO=
RT_REVERSAL,
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
>+                     XELPDP_PORT_REVERSAL,
>                      lane_reversal ? XELPDP_PORT_REVERSAL : 0);
>=20
>         if (lane_reversal)
>@@ -2490,7 +2491,7 @@ static void intel_program_port_clock_ctl(struct inte=
l_encoder *encoder,
>         else
>                 val |=3D crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SS=
C_ENABLE_PLLB : 0;
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK=
_UNGATE |
>                      XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLL=
A |
>                      XELPDP_SSC_ENABLE_PLLB, val);
>@@ -2523,15 +2524,16 @@ static void intel_cx0_powerdown_change_sequence(st=
ruct drm_i915_private *i915,
>                                                 u8 lane_mask, u8 state)
> {
>         enum phy phy =3D intel_port_to_phy(i915, port);
>+        i915_reg_t buf_ctl2_reg =3D XELPDP_PORT_BUF_CTL2(i915, port);
>         int lane;
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>+        intel_de_rmw(i915, buf_ctl2_reg,
>                      intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, =
XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),
>                      intel_cx0_get_powerdown_state(lane_mask, state));
>=20
>         /* Wait for pending transactions.*/
>         for_each_cx0_lane_in_mask(lane_mask, lane)
>-                if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_=
CTL(port, lane),
>+                if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_=
CTL(i915, port, lane),
>                                             XELPDP_PORT_M2P_TRANSACTION_P=
ENDING,
>                                             XELPDP_MSGBUS_TIMEOUT_SLOW)) =
{
>                         drm_dbg_kms(&i915->drm,
>@@ -2540,12 +2542,12 @@ static void intel_cx0_powerdown_change_sequence(st=
ruct drm_i915_private *i915,
>                         intel_cx0_bus_reset(i915, port, lane);
>                 }
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>+        intel_de_rmw(i915, buf_ctl2_reg,
>                      intel_cx0_get_powerdown_update(INTEL_CX0_BOTH_LANES)=
,
>                      intel_cx0_get_powerdown_update(lane_mask));
>=20
>         /* Update Timeout Value */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port)=
,
>+        if (__intel_de_wait_for_register(i915, buf_ctl2_reg,
>                                          intel_cx0_get_powerdown_update(l=
ane_mask), 0,
>                                          XELPDP_PORT_POWERDOWN_UPDATE_TIM=
EOUT_US, 0, NULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of Lane =
reset after %dus.\n",
>@@ -2554,10 +2556,10 @@ static void intel_cx0_powerdown_change_sequence(st=
ruct drm_i915_private *i915,
>=20
> static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum=
 port port)
> {
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
>                      XELPDP_POWER_STATE_READY_MASK,
>                      XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(i915, port),
>                      XELPDP_POWER_STATE_ACTIVE_MASK |
>                      XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
>                      XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
>@@ -2602,28 +2604,28 @@ static void intel_cx0_phy_lane_reset(struct drm_i9=
15_private *i915,
>                                            XELPDP_LANE_PHY_CURRENT_STATUS=
(1))
>                                         : XELPDP_LANE_PHY_CURRENT_STATUS(=
0);
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port)=
,
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(i915,=
 port),
>                                          XELPDP_PORT_BUF_SOC_PHY_READY,
>                                          XELPDP_PORT_BUF_SOC_PHY_READY,
>                                          XELPDP_PORT_BUF_SOC_READY_TIMEOU=
T_US, 0, NULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of SOC r=
eset after %dus.\n",
>                          phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT=
_US);
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
>                      XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1=
),
>                      lane_pipe_reset);
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port)=
,
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(i915,=
 port),
>                                          lane_phy_current_status, lane_ph=
y_current_status,
>                                          XELPDP_PORT_RESET_START_TIMEOUT_=
US, 0, NULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of Lane =
reset after %dus.\n",
>                          phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_U=
S);
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
>                      intel_cx0_get_pclk_refclk_request(owned_lane_mask),
>                      intel_cx0_get_pclk_refclk_request(lane_mask));
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port=
),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, port),
>                                          intel_cx0_get_pclk_refclk_ack(ow=
ned_lane_mask),
>                                          intel_cx0_get_pclk_refclk_ack(la=
ne_mask),
>                                          XELPDP_REFCLK_ENABLE_TIMEOUT_US,=
 0, NULL))
>@@ -2634,9 +2636,10 @@ static void intel_cx0_phy_lane_reset(struct drm_i91=
5_private *i915,
>                                             CX0_P2_STATE_RESET);
>         intel_cx0_setup_powerdown(i915, port);
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset, 0=
);
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_re=
set, 0);
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port), lan=
e_phy_current_status,
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(i915, port=
),
>+                                    lane_phy_current_status,
>                                     XELPDP_PORT_RESET_END_TIMEOUT))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of Lane =
reset after %dms.\n",
>                          phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
>@@ -2765,12 +2768,12 @@ static void intel_cx0pll_enable(struct intel_encod=
er *encoder,
>          * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
>          * LN<Lane for maxPCLK> to "1" to enable PLL.
>          */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES)=
,
>                      intel_cx0_get_pclk_pll_request(maxpclk_lane));
>=20
>         /* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> =
=3D=3D "1". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(enco=
der->port),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>                                          intel_cx0_get_pclk_pll_ack(INTEL=
_CX0_BOTH_LANES),
>                                          intel_cx0_get_pclk_pll_ack(maxpc=
lk_lane),
>                                          XELPDP_PCLK_PLL_ENABLE_TIMEOUT_U=
S, 0, NULL))
>@@ -2790,7 +2793,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encod=
er *encoder)
> {
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         u32 clock;
>-        u32 val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->po=
rt));
>+        u32 val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encod=
er->port));
>=20
>         clock =3D REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>=20
>@@ -2843,11 +2846,11 @@ static void intel_mtl_tbt_pll_enable(struct intel_=
encoder *encoder,
>          */
>         val |=3D XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915,=
 crtc_state->port_clock));
>         val |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_=
UNGATE, val);
>=20
>         /* 2. Read back PORT_CLOCK_CTL REGISTER */
>-        val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port))=
;
>+        val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->=
port));
>=20
>         /*
>          * 3. Follow the Display Voltage Frequency Switching - Sequence
>@@ -2858,10 +2861,10 @@ static void intel_mtl_tbt_pll_enable(struct intel_=
encoder *encoder,
>          * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to ena=
ble PLL.
>          */
>         val |=3D XELPDP_TBT_CLOCK_REQUEST;
>-        intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
>+        intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port), =
val);
>=20
>         /* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack =3D=3D "1". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(enco=
der->port),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>                                          XELPDP_TBT_CLOCK_ACK,
>                                          XELPDP_TBT_CLOCK_ACK,
>                                          100, 0, NULL))
>@@ -2913,7 +2916,7 @@ static void intel_cx0pll_disable(struct intel_encode=
r *encoder)
>          * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for ma=
xPCLK>
>          * to "0" to disable PLL.
>          */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES)=
 |
>                      intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LAN=
ES), 0);
>=20
>@@ -2923,7 +2926,7 @@ static void intel_cx0pll_disable(struct intel_encode=
r *encoder)
>         /*
>          * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> =
=3D=3D "0".
>          */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(enco=
der->port),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>                                          intel_cx0_get_pclk_pll_ack(INTEL=
_CX0_BOTH_LANES) |
>                                          intel_cx0_get_pclk_refclk_ack(IN=
TEL_CX0_BOTH_LANES), 0,
>                                          XELPDP_PCLK_PLL_DISABLE_TIMEOUT_=
US, 0, NULL))
>@@ -2936,9 +2939,9 @@ static void intel_cx0pll_disable(struct intel_encode=
r *encoder)
>          */
>=20
>         /* 7. Program PORT_CLOCK_CTL register to disable and gate clocks.=
 */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_DDI_CLOCK_SELECT_MASK, 0);
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_FORWARD_CLOCK_UNGATE, 0);
>=20
>         intel_cx0_phy_transaction_end(encoder, wakeref);
>@@ -2957,11 +2960,11 @@ static void intel_mtl_tbt_pll_disable(struct intel=
_encoder *encoder)
>         /*
>          * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to dis=
able PLL.
>          */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_TBT_CLOCK_REQUEST, 0);
>=20
>         /* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack =3D=3D "0". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(enco=
der->port),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>                                          XELPDP_TBT_CLOCK_ACK, 0, 10, 0, =
NULL))
>                 drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unl=
ocked after 10us.\n",
>                          encoder->base.base.id, encoder->base.name, phy_n=
ame(phy));
>@@ -2974,7 +2977,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_e=
ncoder *encoder)
>         /*
>          * 5. Program PORT CLOCK CTRL register to disable and gate clocks
>          */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_DDI_CLOCK_SELECT_MASK |
>                      XELPDP_FORWARD_CLOCK_UNGATE, 0);
>=20
>@@ -3001,7 +3004,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encode=
r,
>          * TODO: Determine the PLL type from the SW state, once MTL PLL
>          * handling is done via the standard shared DPLL framework.
>          */
>-        u32 val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->po=
rt));
>+        u32 val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encod=
er->port));
>         u32 clock =3D REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>=20
>         if (clock =3D=3D XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/g=
pu/drm/i915/display/intel_cx0_phy_regs.h
>index b2db4cc366d6..faff81fa8438 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>@@ -7,16 +7,39 @@
> #define __INTEL_CX0_PHY_REGS_H__
>=20
> #include "i915_reg_defs.h"
>+#include "intel_display_limits.h"
>+
>+/*
>+ * Wrapper macro to convert from port number to the index used in some of=
 the
>+ * registers. For Display version 20 and above it converts the port numbe=
r to a
>+ * single range, starting with the TC offsets. When used together with
>+ * _PICK_EVEN_2RANGES(idx, PORT_TC1, ...), this single range will be the =
second
>+ * range. Example:
>+ *
>+ * PORT_TC1 -> PORT_TC1
>+ * PORT_TC2 -> PORT_TC2
>+ * PORT_TC3 -> PORT_TC3
>+ * PORT_TC4 -> PORT_TC4
>+ * PORT_A   -> PORT_TC4 + 1
>+ * PORT_B   -> PORT_TC4 + 2
>+ * ...
>+ */
>+#define __xe2lpd_port_idx(port)                                          =
      \
>+        (port >=3D PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A)
>=20
> #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A                0x64040
> #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B                0x64140
> #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1                0x16F240
> #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2                0x16F440
>-#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)                _MMIO(_PICK=
_EVEN_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL(idx, lane)                _MMIO(_PICK=
_EVEN_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4)
>+#define XELPDP_PORT_M2P_MSGBUS_CTL(i915__, port, lane)                   =
             \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_M2P_MSGBUS_CTL(__xe2lpd_port_idx(port), lane) :    =
            \
>+         _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))
> #define   XELPDP_PORT_M2P_TRANSACTION_PENDING                REG_BIT(31)
> #define   XELPDP_PORT_M2P_COMMAND_TYPE_MASK                REG_GENMASK(30=
, 27)
> #define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED        REG_FIELD_PREP=
(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
>@@ -27,11 +50,16 @@
> #define   XELPDP_PORT_M2P_TRANSACTION_RESET                REG_BIT(15)
> #define   XELPDP_PORT_M2P_ADDRESS_MASK                        REG_GENMASK=
(11, 0)
> #define   XELPDP_PORT_M2P_ADDRESS(val)                        REG_FIELD_P=
REP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
>-#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)        _MMIO(_PICK_EVEN=
_2RANGES(port, PORT_TC1, \
>+
>+#define _XELPDP_PORT_P2M_MSGBUS_STATUS(idx, lane)        _MMIO(_PICK_EVEN=
_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4 + 8)
>+#define XELPDP_PORT_P2M_MSGBUS_STATUS(i915__, port, lane)                =
        \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_P2M_MSGBUS_STATUS(__xe2lpd_port_idx(port), lane) : =
       \
>+         _XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane))
> #define   XELPDP_PORT_P2M_RESPONSE_READY                REG_BIT(31)
> #define   XELPDP_PORT_P2M_COMMAND_TYPE_MASK                REG_GENMASK(30=
, 27)
> #define   XELPDP_PORT_P2M_COMMAND_READ_ACK                0x4
>@@ -54,11 +82,15 @@
> #define _XELPDP_PORT_BUF_CTL1_LN0_B                        0x64104
> #define _XELPDP_PORT_BUF_CTL1_LN0_USBC1                        0x16F200
> #define _XELPDP_PORT_BUF_CTL1_LN0_USBC2                        0x16F400
>-#define XELPDP_PORT_BUF_CTL1(port)                        _MMIO(_PICK_EVE=
N_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_BUF_CTL1(idx)                        _MMIO(_PICK_EVE=
N_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_A, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_B, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
>+#define XELPDP_PORT_BUF_CTL1(i915__, port)                               =
         \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_BUF_CTL1(__xe2lpd_port_idx(port)) :                =
        \
>+         _XELPDP_PORT_BUF_CTL1(port))
> #define   XELPDP_PORT_BUF_D2D_LINK_ENABLE                REG_BIT(29)
> #define   XELPDP_PORT_BUF_D2D_LINK_STATE                REG_BIT(28)
> #define   XELPDP_PORT_BUF_SOC_PHY_READY                        REG_BIT(24=
)
>@@ -75,12 +107,15 @@
> #define   XELPDP_PORT_WIDTH_MASK                        REG_GENMASK(3, 1)
> #define   XELPDP_PORT_WIDTH(val)                        REG_FIELD_PREP(XE=
LPDP_PORT_WIDTH_MASK, val)
>=20
>-#define XELPDP_PORT_BUF_CTL2(port)                        _MMIO(_PICK_EVE=
N_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_BUF_CTL2(idx)                        _MMIO(_PICK_EVE=
N_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_A, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_B, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 4)
>-
>+#define XELPDP_PORT_BUF_CTL2(i915__, port)                               =
         \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_BUF_CTL2(__xe2lpd_port_idx(port)) :                =
        \
>+         _XELPDP_PORT_BUF_CTL2(port))
> #define   XELPDP_LANE_PIPE_RESET(lane)                        _PICK(lane,=
 REG_BIT(31), REG_BIT(30))
> #define   XELPDP_LANE_PHY_CURRENT_STATUS(lane)                _PICK(lane,=
 REG_BIT(29), REG_BIT(28))
> #define   XELPDP_LANE_POWERDOWN_UPDATE(lane)                _PICK(lane, R=
EG_BIT(25), REG_BIT(24))
>@@ -95,11 +130,15 @@
> #define   XELPDP_POWER_STATE_READY_MASK                        REG_GENMAS=
K(7, 4)
> #define   XELPDP_POWER_STATE_READY(val)                        REG_FIELD_=
PREP(XELPDP_POWER_STATE_READY_MASK, val)
>=20
>-#define XELPDP_PORT_BUF_CTL3(port)                        _MMIO(_PICK_EVE=
N_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_BUF_CTL3(idx)                        _MMIO(_PICK_EVE=
N_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_A, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_B, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 8)
>+#define XELPDP_PORT_BUF_CTL3(i915__, port)                               =
         \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_BUF_CTL3(__xe2lpd_port_idx(port)) :                =
        \
>+         _XELPDP_PORT_BUF_CTL3(port))
> #define   XELPDP_PLL_LANE_STAGGERING_DELAY_MASK                REG_GENMAS=
K(15, 8)
> #define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)                REG_FIELD_=
PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
> #define   XELPDP_POWER_STATE_ACTIVE_MASK                REG_GENMASK(3, 0)
>@@ -127,11 +166,15 @@
> #define _XELPDP_PORT_CLOCK_CTL_B                        0x641E0
> #define _XELPDP_PORT_CLOCK_CTL_USBC1                        0x16F260
> #define _XELPDP_PORT_CLOCK_CTL_USBC2                        0x16F460
>-#define XELPDP_PORT_CLOCK_CTL(port)                        _MMIO(_PICK_EV=
EN_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_CLOCK_CTL(idx)                        _MMIO(_PICK_EV=
EN_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_CLOCK_CTL_A, \
>                                                                          =
        _XELPDP_PORT_CLOCK_CTL_B, \
>                                                                          =
        _XELPDP_PORT_CLOCK_CTL_USBC1, \
>                                                                          =
        _XELPDP_PORT_CLOCK_CTL_USBC2))
>+#define XELPDP_PORT_CLOCK_CTL(i915__, port)                              =
          \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
     \
>+         _XELPDP_PORT_CLOCK_CTL(__xe2lpd_port_idx(port)) :               =
         \
>+         _XELPDP_PORT_CLOCK_CTL(port))
> #define   XELPDP_LANE_PCLK_PLL_REQUEST(lane)                REG_BIT(31 - =
((lane) * 4))
> #define   XELPDP_LANE_PCLK_PLL_ACK(lane)                REG_BIT(30 - ((la=
ne) * 4))
> #define   XELPDP_LANE_PCLK_REFCLK_REQUEST(lane)                REG_BIT(29=
 - ((lane) * 4))
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 53d8f13f8471..2509785daf7b 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -177,7 +177,7 @@ static void mtl_wait_ddi_buf_idle(struct drm_i915_priv=
ate *i915, enum port port)
>         int ret;
>=20
>         /* FIXME: find out why Bspec's 100us timeout is too short */
>-        ret =3D wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(por=
t)) &
>+        ret =3D wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i91=
5, port)) &
>                            XELPDP_PORT_BUF_PHY_IDLE), 10000);
>         if (ret)
>                 drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to ge=
t idle\n",
>@@ -225,7 +225,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_=
private *dev_priv,
>         }
>=20
>         if (DISPLAY_VER(dev_priv) >=3D 14)
>-                ret =3D _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_B=
UF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
>+                ret =3D _wait_for(!(intel_de_read(dev_priv,
>+                                                XELPDP_PORT_BUF_CTL1(dev_=
priv, port)) &
>+                                  XELPDP_PORT_BUF_PHY_IDLE),
>                                 timeout_us, 10, 10);
>         else
>                 ret =3D _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(p=
ort)) & DDI_BUF_IS_IDLE),
>@@ -2366,7 +2368,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>                 wait_bits =3D XE2LPD_DDI_BUF_D2D_LINK_STATE;
>                 dig_port->saved_port_bits |=3D XE2LPD_DDI_BUF_D2D_LINK_EN=
ABLE;
>         } else {
>-                reg =3D XELPDP_PORT_BUF_CTL1(port);
>+                reg =3D XELPDP_PORT_BUF_CTL1(dev_priv, port);
>                 set_bits =3D XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>                 wait_bits =3D XELPDP_PORT_BUF_D2D_LINK_STATE;
>         }
>@@ -2386,7 +2388,7 @@ static void mtl_port_buf_ctl_program(struct intel_en=
coder *encoder,
>         enum port port =3D encoder->port;
>         u32 val;
>=20
>-        val =3D intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
>+        val =3D intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port));
>         val &=3D ~XELPDP_PORT_WIDTH_MASK;
>         val |=3D XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_co=
unt));
>=20
>@@ -2399,7 +2401,7 @@ static void mtl_port_buf_ctl_program(struct intel_en=
coder *encoder,
>         if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>                 val |=3D XELPDP_PORT_REVERSAL;
>=20
>-        intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
>+        intel_de_write(i915, XELPDP_PORT_BUF_CTL1(i915, port), val);
> }
>=20
> static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
>@@ -2410,7 +2412,7 @@ static void mtl_port_buf_ctl_io_selection(struct int=
el_encoder *encoder)
>=20
>         val =3D intel_tc_port_in_tbt_alt_mode(dig_port) ?
>               XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
>                      XELPDP_PORT_BUF_IO_SELECT_TBT, val);
> }
>=20
>@@ -2830,7 +2832,7 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encod=
er)
>                 wait_bits =3D XE2LPD_DDI_BUF_D2D_LINK_STATE;
>                 dig_port->saved_port_bits &=3D ~XE2LPD_DDI_BUF_D2D_LINK_E=
NABLE;
>         } else {
>-                reg =3D XELPDP_PORT_BUF_CTL1(port);
>+                reg =3D XELPDP_PORT_BUF_CTL1(dev_priv, port);
>                 clr_bits =3D XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>                 wait_bits =3D XELPDP_PORT_BUF_D2D_LINK_STATE;
>         }
>@@ -2968,7 +2970,7 @@ static void intel_ddi_post_disable_dp(struct intel_a=
tomic_state *state,
>=20
>         /* De-select Thunderbolt */
>         if (DISPLAY_VER(dev_priv) >=3D 14)
>-                intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port=
),
>+                intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, enc=
oder->port),
>                              XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
> }
>=20
>@@ -3241,7 +3243,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomi=
c_state *state,
>                 if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>                         port_buf |=3D XELPDP_PORT_REVERSAL;
>=20
>-                intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
>+                intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, por=
t),
>                              XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSA=
L, port_buf);
>=20
>                 dig_port->saved_port_bits |=3D DDI_PORT_WIDTH(lane_count)=
;
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 3c94bbcb5497..678693978892 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -958,10 +958,11 @@ xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_=
port *tc)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>         enum port port =3D tc->dig_port->base.port;
>+        i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
>=20
>         assert_tc_cold_blocked(tc);
>=20
>-        return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_T=
CSS_POWER_STATE;
>+        return intel_de_read(i915, reg) & XELPDP_TCSS_POWER_STATE;
> }
>=20
> static bool
>@@ -984,16 +985,17 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct=
 intel_tc_port *tc, bool ena
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>         enum port port =3D tc->dig_port->base.port;
>+        i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
>         u32 val;
>=20
>         assert_tc_cold_blocked(tc);
>=20
>-        val =3D intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
>+        val =3D intel_de_read(i915, reg);
>         if (enable)
>                 val |=3D XELPDP_TCSS_POWER_REQUEST;
>         else
>                 val &=3D ~XELPDP_TCSS_POWER_REQUEST;
>-        intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
>+        intel_de_write(i915, reg, val);
> }
>=20
> static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, boo=
l enable)
>@@ -1020,26 +1022,28 @@ static void xelpdp_tc_phy_take_ownership(struct in=
tel_tc_port *tc, bool take)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>         enum port port =3D tc->dig_port->base.port;
>+        i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
>         u32 val;
>=20
>         assert_tc_cold_blocked(tc);
>=20
>-        val =3D intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
>+        val =3D intel_de_read(i915, reg);
>         if (take)
>                 val |=3D XELPDP_TC_PHY_OWNERSHIP;
>         else
>                 val &=3D ~XELPDP_TC_PHY_OWNERSHIP;
>-        intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
>+        intel_de_write(i915, reg, val);
> }
>=20
> static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>         enum port port =3D tc->dig_port->base.port;
>+        i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
>=20
>         assert_tc_cold_blocked(tc);
>=20
>-        return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_T=
C_PHY_OWNERSHIP;
>+        return intel_de_read(i915, reg) & XELPDP_TC_PHY_OWNERSHIP;
> }
>=20
> static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
>--=20
>2.40.1
>
