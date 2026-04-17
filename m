Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLFKEv2U4WkVvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 04:03:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5018B4161D8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 04:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBF610E265;
	Fri, 17 Apr 2026 02:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVLcU7Jm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F18C10E1D3;
 Fri, 17 Apr 2026 02:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776391416; x=1807927416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/wk5yt4qiYK/U8G+4Q3fLA8ywZV1jBxGNKd+wSjHlTQ=;
 b=HVLcU7JmliyWEphUWVoOWQlvXnW8xZGnXmO4AsLwaGFlJ74yHGxKkL1T
 qwRR357yJmsxXduGsciyVdDzQElBDi+nb5kuL2I2OL+UzpbZPngjE7Kma
 higswg9Ps1yAAAK0Lsc1XZl+ETzkEu05Do6XgVrU0A1iKmCNDlZfTFfAX
 E7URl2Ro7WxQbERqmPgos2jfKj+nRK3+snFz0aY9SBbx/aJNIbTDpRAd/
 4mWohRcCIQIkRep1QBKsQutYMtF0FdgCW4BSt+xe1Izi2amHK8nRQpt57
 ITFaDoO8518wTtyPy46WIVKBdxloNgsyhoqsTp/42PBcJu+QpItQJg7hv Q==;
X-CSE-ConnectionGUID: K3dqpqqaRWCN8VnOl4i5jw==
X-CSE-MsgGUID: oRa56lcmROalfcOg4ZrQLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="100051730"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="100051730"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 19:03:35 -0700
X-CSE-ConnectionGUID: 17e1/wbvTT+JHr25b5ZtSw==
X-CSE-MsgGUID: RTm1rB15RFadp5xkeo08Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="254375767"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 19:03:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 19:03:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 19:03:34 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.65) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 19:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nTU1IObRS9S8DA2FDiOPC2Kg3BQTB9pmbbSh4WoIDA2ZOrEKBh+xp1ftZsXTgCL5ycde888zWypxgJOXKVdhuF98j8ODnLxpU8896J3Lzb8IyATG93j9Nhra/ylwoEe2DuqhJHOHazPdbsfLmTMzNHeRsC0r65J7XWK80wDFt341WFdSreCzNZNUdLIIWOLRK+8UMbgOvoXBkQhaefsjzSJZdEMV2lJPBzvCjZ3A6Sp+JyA8UqU0OhPJw7cRJrb6DipQ3JlDDn5aqIbq94v5L5b/FOU9M/pLyA1/CIl42MpTyjoGFt3ESTEPKrCXgCsWOEPp9GKFPz5a4t7Qg9Izvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f3pjYGO4CgPnqonXBWddeUVCE1GrntqrNxg3vFF0NSk=;
 b=albimNCQfx5kU0S8eRKNE5f3EXs+taYOAeZ+VQOaz/SqKQkFNKieRcD9fhuURkysBk4EqzMWyx30nFmbIW9FpdKvNslBxlMOUGGVfwEMhJi6QBe6e4xuglDLY4UQpqyzYjDilJTqEvSRaXk5rxphzSs5esdTnB1chKTm75Kg9xY3X/BmxzimRLB7gR2bH4dwH9KUq0wNJDaTd7bm9kFIKElKDChQZ3cgJQK0klVgyEbCIvHJR7mX3mr2+AhwAhqKoOp7F536q1ZLb3nk6V2TEyXVjzgF9LlEVTkogiiKe0PaMpKt+SxEETUhKFZhlRgOvxtMtHliBGZCUoGIn8ilJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SJ5PPFC35D45AFD.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::853) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.49; Fri, 17 Apr
 2026 02:03:24 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9818.017; Fri, 17 Apr 2026
 02:03:24 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12 UV
 surface offset calculation
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12
 UV surface offset calculation
Thread-Index: AQHcydeH95mm/srKq0CqfRo0nHMO8LXfRluAgADEpQCAAFUn0IACKDRg
Date: Fri, 17 Apr 2026 02:03:24 +0000
Message-ID: <PH7PR11MB8252A2A70FD4185D02EC47E289202@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260411171521.162189-1-vidya.srinivas@intel.com>
 <20260415001553.181329-1-vidya.srinivas@intel.com>
 <7dceaf9f794e3e2bb9c2b12f435f4cad4bb16deb@intel.com>
 <PH7PR11MB8252546F4101CB34DB7368FE89222@PH7PR11MB8252.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB8252546F4101CB34DB7368FE89222@PH7PR11MB8252.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SJ5PPFC35D45AFD:EE_
x-ms-office365-filtering-correlation-id: 8bc44e7f-3a48-420b-13f5-08de9c25821a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: NnSBckc9VuFGEqOyuht8XC5yvDmLopmKjmqig/YZuuGlsts7TrIMhGgUuKzsyxZVAs7f5AY3uOKJMTo+kd9rvm7HkJFAm8UPr6frc8pHnKlT9JZuowlk2YNCx++t/B+WvPFlRH82pfhecUMCEC5E3EuxJ5Maf+5qmOMDtNymofqO8HvifmciY1kU8PasQ7MahC/8SoObUAOX6UrGJ/PvlKRflkGHJnQx4imXKaZLSO4w7KqLNgiz0w8Lp8xDnQrGkljXOFTocQwiWV0PnpwAdtNZ2ZYVAlLbr97lYVbGuUrJeauv2KhCx2c11g+IRoEsTZrf2uraoSkXylVHVxYJ+x3nK5D4W/bzMGSC6iZfFUYLY6JLvP40WQo0u7yEKAzTPgykHNkqHOCIQZGFWDhps0QJe3I3yigPU2XBKWQizroLHKIUGzYwbIePJObvfW9qjxJxhHoUVJ4Q7NhpLMyD8YKzw89kzXh81VltJfiThksl9mKGfDH1jKGyWy12jNFeNPKJaQZYmHuB60hrwAVhnosoCNXgLrheRuBR1GSVmM201gtAY2vyVCvQepU4xf1elYSoTtA5W+P+6LwxbANtDNUzt8PFxZqo4teYCi4GCkRXi1lCbXzn3ZM2y/mcFFQKOrRmPpgLEzzvb3Gyoroh4ypmDuBeKZQNrr1tZ1yNHy52t7dCEZXXQZwOHKrtCBGzPrCyQtvOvmYISJP67n4VZbfTwLMgNr4VHcUSsvb2y+tkg2BWL0R8uGLlgSd4/6Th
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bEa/60Q/PM6+M+HJuH49gqT0WwH97cJAbTdiKuPGLLijpZGWMi/0II4VJ2+X?=
 =?us-ascii?Q?UlGQGIfJNHFHHkpxlRMRdhDYxNHweOy5sPkep1ukXrgg4neNsV0CKf+2qqUF?=
 =?us-ascii?Q?cUex96b4qH86yj5yQGeghKI3ngp4uxdTARAQjzeq+upBklwqpSO1m/hpiB/y?=
 =?us-ascii?Q?orUqeI6Y7ozdk90sB5rNxztIRaQGcaVEVVtjkvNFKudpgiQ/e0OY9YEy+nsJ?=
 =?us-ascii?Q?lPnGUjKnmBIm4SgWYn0WW7ydKfrvgdtnMt6lE6Bxg3fGMbDTOTmgzDFDD6Qe?=
 =?us-ascii?Q?didNGamdJ5F/UbeCI4+oefvmE4xa6Qik1iYEBraGW25icx/M+NWJRIvBhsBg?=
 =?us-ascii?Q?OV71dMd4xqoAU4k8vZdOLQjBXOhBS/0EHlfAd7F30XK2T9ZSDXL5RQQ7uVu5?=
 =?us-ascii?Q?Q0IZf3/r0YMyMqz6cjvw0B6tSTfPyNQAix5UxLMWL1iUEhcVARl39UURDZxr?=
 =?us-ascii?Q?NXIPFe6MlXt0YE80LqnhrDwze8RwqyupG1yw1SxLdAlHzIFKt872toTRlGLs?=
 =?us-ascii?Q?L4XKKfCynSv2XJJvWB5yacdzKSCfjpX65lwvHiFP80Pstk1GIWmH3wTvVppW?=
 =?us-ascii?Q?YyFmnv/Gra+7Xg2Y3UyXWRbLbZezJzzlUcCJQBvr7F74Ut5jwWteIYNOnjdT?=
 =?us-ascii?Q?vu2VqL8eX6p8jjTtIX5nxXjyux0uofEZPSaWiDyQCewgBg5oGnw4PO/FTUwT?=
 =?us-ascii?Q?C1zsijZDkaRiGX1rsoqjtr4gxYqSaRokesdbpvCbD3ZQ1sF2pulTN8eaIiHZ?=
 =?us-ascii?Q?MsyITKYoweQS+WYjMb6ARX5x7Uf4d5Gs3vRZQO77vpxZtDhYiLz1nukYZzXD?=
 =?us-ascii?Q?ZGUk+BroJnCF3lMtme7eNHGP16a8q11P0ZEpP+pusDhRwEv1S0vooRbKAPiZ?=
 =?us-ascii?Q?wdoDTo9ZJZcT6P/NwOF5xn3qpYFtvTJ5oJxeXzisGUiVQf6qdTKULGq/JwSQ?=
 =?us-ascii?Q?/3TcTR1rREy7b+/5No45VdeKrrOebTRja/t4tS4dx3tvrzlqVChMnVYN4u4A?=
 =?us-ascii?Q?+gcszhnV2im2gWCD1ssSpEX2OP3mBs68/VQQy/50+DZE1bD6bd3fA17NywCd?=
 =?us-ascii?Q?LyD8h7qFckOw0oUkp9Yy/y3c+J+VpF+IHQDf25OoFGOW2Rzhh5i5p9yBWeNR?=
 =?us-ascii?Q?ZJ6zQLbVMf/5apHRIVXFRAiU2E/s6MyjpFeDzfr8+dU4PyfHg2cJu1M+wrwx?=
 =?us-ascii?Q?bZo3KDrzA06wQwTagLUolHmtxHjexWY2vfsSkiVwX+tuFqJ4MvpjmJF7L3Dw?=
 =?us-ascii?Q?tITEBkE4p/d/yzHwtxrCh3q8iMzB2/+Z894viBM4s5FCwxVdnrBYZlnbqKfJ?=
 =?us-ascii?Q?a62RPujjG0yhxPAOzSSzkqZv2XHAhEHeIXzJWUw2ojRlJMDMB6jc0mZarrJu?=
 =?us-ascii?Q?PnT4jJVZPuY/mM/U+fFAJkYBhGsrgxZYDFl279AaTIgPDiPAXJCLPLkImv7Q?=
 =?us-ascii?Q?wz7jnNvql/bhU/wJOiJQkFXXN7J3mrgLbrH6S1pHJY0v1xqFcxMjAbKzE9Ry?=
 =?us-ascii?Q?A6c8yIJkqJ0ssmDVpEm45VzlsiyL/8PZ4pY2LFEf714t3RHyaXFOI0d1dLEX?=
 =?us-ascii?Q?E9Y7PQlwDdSmHM2YiHEWS9Fs1QPRY41J+dGT18iUXe9YU1EG/XcY8GzMoQdC?=
 =?us-ascii?Q?jP2wifhBzo+ihBtE6TqcsNLzVZLXqdyqsujSSv5v617d4YoA8e7qNBmH93Jm?=
 =?us-ascii?Q?2RALiV4kD3/RpObSbv0P1zcm+PWdrZzeK8e+pOiCQwbElkwbMOBmrJ2pKBN7?=
 =?us-ascii?Q?C7jB06rPPw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: v+Erx/NinkI0ndqL9Zanbp3iHV7qyX56cSpPY9gt/z6rln3K2hfmDRqMuwUQg45vX0xZWsTwugoHrAmuvyXagukHVvbHQU3P3+LHW3HlNUrueK2KjLr2ShIt20QkszhpzU0IYRzq3RYHCNyKzYInB2f/unXv23G3mcbGER4MO1ORrNOwy1gh6Ga9BN77neMMfvZpPCFiPwYI39+LItFJgLDMIu2HVnXIAVdN19Be6U7rgyJJFp4WvN/xHLIK4XnuWMbrE8yousfWKzgoo5C78TZDdEYcftClq50YSLlyqTMmmYgV7rpDfFebtDICpBsi41+cbPbcK0kEKT+GbwkSUQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bc44e7f-3a48-420b-13f5-08de9c25821a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 02:03:24.3241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FXtLKUJ5KfzbWtMdoXUNa0yokHGH2q4HhAw8llyjbTH8v3nlWlhCM2m2wfqfxHIFs9+aUyzOtaMWnkWa9NH0LEsStkZvEboGVq1qT0DR05U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFC35D45AFD
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5018B4161D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Srinivas, Vidya
> Sent: 15 April 2026 22:36
> To: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV=
12 UV
> surface offset calculation
>=20
>=20
>=20
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: 15 April 2026 17:30
> > To: Srinivas, Vidya <vidya.srinivas@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma
> > <uma.shankar@intel.com>; Srinivas, Vidya <vidya.srinivas@intel.com>
> > Subject: Re: [PATCH] [RFC]: drm/i915/display: Use ceiling division for
> > NV12 UV surface offset calculation
> >
> > On Wed, 15 Apr 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > > For LNL+, odd source size and panning for YUV 422/420 surfaces is
> > > supported. However, it requires the UV (chroma) surface Start X/Y
> > > and width/height to be calculated as ceiling(half of Y plane value)
> > > rather than floor.
> > >
> > > The current code uses (>> 17) which combines the U16.16 fixed-point
> > > to integer conversion (>> 16) with a divide-by-2 for chroma
> > > subsampling (>> 1) into a single floor division. For odd Y plane
> > > values this produces an off-by-one error in the UV plane offset.
> > >
> > > On Android systems we see PLANE ATS fault when NV12 overlays are
> > > used with odd source dimensions:
> > >
> > > [  126.854200] xe 0000:00:02.0: [drm:intel_atomic_setup_scaler [xe]]
> > > [CRTC:148:pipe A] attached scaler id 0.0 to PLANE:33 [  126.854617]
> > > xe
> > > 0000:00:02.0: [drm:skl_update_scaler [xe]] [CRTC:148:pipe A]
> > > scaler_user index 0.0: staged scaling request for 1279x719->1340x753
> > > [ 126.854837] xe 0000:00:02.0: [drm:intel_plane_atomic_check [xe]]
> > > UV plane [PLANE:33:plane 1A] using Y plane [PLANE:123:plane 4A] [
> > > 126.854926] xe 0000:00:02.0: [drm] *ERROR* [CRTC:148:pipe A] PLANE
> > > ATS fault
> > >
> > > With Y plane width 1279:
> > >   floor(1279/2) =3D 639 (current)
> > >   ceil(1279/2)  =3D 640 (required)
> > >
> > > Use DIV_ROUND_UP(value, 1 << 17) for the ceiling division of the
> > > U16.16 fixed-point source coordinates, preserving sub-pixel precision=
.
> > > This is a no-op for even values since ceiling and floor are equal
> > > when the dividend is even.
> > >
> > > v2: Use DIV_ROUND_UP(value, 1 << 17) to preserve sub-pixel precision
> > >     while making the ceiling division readable (Jani, Uma)
> > >
> > > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 14
> > > ++++++++++----
> > >  1 file changed, 10 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 7a9d494334b5..1de79ff65253 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -2139,10 +2139,16 @@ static int skl_check_nv12_aux_surface(struct
> > intel_plane_state *plane_state)
> > >  	int min_height =3D intel_plane_min_height(plane, fb, uv_plane,
> > rotation);
> > >  	int max_width =3D intel_plane_max_width(plane, fb, uv_plane,
> > rotation);
> > >  	int max_height =3D intel_plane_max_height(plane, fb, uv_plane,
> > rotation);
> > > -	int x =3D plane_state->uapi.src.x1 >> 17;
> > > -	int y =3D plane_state->uapi.src.y1 >> 17;
> > > -	int w =3D drm_rect_width(&plane_state->uapi.src) >> 17;
> > > -	int h =3D drm_rect_height(&plane_state->uapi.src) >> 17;
> > > +
> > > +	/*
> > > +	 * LNL+ UV surface start/size =3D
> > > +	 * ceiling(half of Y plane start/size). Use ceiling division
> > > +	 * unconditionally; it is a no-op for even values.
> > > +	 */
> > > +	int x =3D DIV_ROUND_UP(plane_state->uapi.src.x1, 1 << 17);
> > > +	int y =3D DIV_ROUND_UP(plane_state->uapi.src.y1, 1 << 17);
> > > +	int w =3D DIV_ROUND_UP(drm_rect_width(&plane_state->uapi.src), 1
> > << 17);
> > > +	int h =3D DIV_ROUND_UP(drm_rect_height(&plane_state->uapi.src), 1
> > <<
> > > +17);
> >
> > Like I said, my main problem with the original >> 17 is that it
> > combines two completely separate things in one: division by two, and
> > getting the integer part of a fixed-point number.
> >
> > Ideally you'd have helpers for first doing U16.16 division by 2, in
> > fixed-point domain, and then getting the ceiling conversion to int.
> >
>=20
> Hello Jani
> Thank you very much.
> Tried adding helpers in v3
> https://patchwork.freedesktop.org/patch/718493/?series=3D164739&rev=3D3
> Kindly have a check and suggest.

Hello Jani,
Sorry to bother you. I added the helpers you suggested.
But I understand it might not be something like what you had expected.
If this still isn't the right approach, could you kindly help land a fix in=
 whatever form you see fit?
This is a blocker for Google Android, so really appreciate getting it unblo=
cked.
Thank you so much.

Regards
Vidya

>=20
> Regards
> Vidya
>=20
> > BR,
> > Jani.
> >
> >
> > >  	u32 offset;
> > >
> > >  	/* FIXME not quite sure how/if these apply to the chroma plane */
> >
> > --
> > Jani Nikula, Intel
