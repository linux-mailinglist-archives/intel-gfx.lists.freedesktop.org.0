Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKWjBsRj3WnmdQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:44:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B6C3F39C0
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:44:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9CE10E3BE;
	Mon, 13 Apr 2026 21:44:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBoSgTGJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4565510E3BE;
 Mon, 13 Apr 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776116674; x=1807652674;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/ow0yCrIlbWaM6L5hi2Kv+ThVOKPqkyoNbkNk8sWxcw=;
 b=fBoSgTGJrfinNi6DtGHv+u3JMClOVC/DDVCJiamRM8Us4m6ullrqVX0Q
 PfvtDbqdsjdbfzQSULk0NCdbJ2FDttnw8hWc6KKRy/6qMVCLEBL0Ld/oR
 qzcF8djkHvYcVCOtX8eh5N2l302R/KT4gdyzGAqGy0DPVmarA6kEV77WP
 9PnrsnjoJykoW4cCcubvG5yethaa4MW2pi49108tNGlJxXpPuihdvNLRD
 Kxn/2o+gD0hOK+NKDTeA+Dedeml3HK3LtmwykEtmoZdK//oEOtWs4cW3I
 g+5liGbF3hxVymQiknwuGEKCBwuSw1l3t4IeD56Tz4r3WfEMPm7kZjhWJ w==;
X-CSE-ConnectionGUID: RACKmYEyR2amTdANYjhmQg==
X-CSE-MsgGUID: UygZD54AQWaGlcMAsFUdDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="80652615"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="80652615"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:44:33 -0700
X-CSE-ConnectionGUID: eSEDL3klTBWz4qWqsJdpzg==
X-CSE-MsgGUID: NlZT+jltR4apoZKfAYS/QA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:44:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:44:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:44:32 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:44:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EH6+jGreUzHKc1VVucTzgnA/DkNdiMonaunCbpEpaZ+r5SFb+If0hcbknWiiollRYJ2bbrryEWxqITZeQq9c4qI0OuJ4tscu4NYpW0jlT5sZchLBxmCbf9EMsHuk39zVaswty8EzbPbr3jytw6NtQ6A6G1tIo/Bma3VxO+tLePnwBmK3RBw2ed/L4BOCKiXUMAfkW4al2a6mwQLl5zaR8y3R6OP0OCwW+VyROgnEu3MXkryEB2GuZ1CD2M2t9IiD+WuxNsK8MQWvUvz0/aI49BFmg4A8Ct7TN2nXedt2/xXXYG+vo7eLAJlOwLmux4NB94Vvf4EwtE29RTnbJQVPfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWKjmHc3moVGQxH0pB5BZT3+g2WomHboNunynqkwhso=;
 b=Ysy31/Ud//ImLZ3YhBwpCjLO0Cdqs5kul/VuATK/j+Xgv8PE5ruy3pjSuJMtoTt5hekyqEj3Xx0Te1N5g3jUGTORBi+dnKky99AUwX0pD+aC07rShlxJttEfVacpFQEUp8cX0M4C7+lsfv0blklC7d+aiQPmeS+tBKxnF4kRD5F/HXpP6Vo0KK2DWCZ9sJxR5QCxGSEHClt3VeqwShTjWWMQ+dpYKVVFnwvjXCGTEfPv8/RiM+nJqGQ0tjZyfxt6gRzvZUlpVN2X3saPdAD3D51ROBbWTCnTJEr6yqkGGUGKfFEFsrr3JS4rKtkg5R1OrHEbBt/q8l7NlHX2Psjx5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA3PR11MB9397.namprd11.prod.outlook.com (2603:10b6:208:573::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Mon, 13 Apr 2026 21:44:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:44:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 10/19] drm/i915/display: Remove unused dc3co_exitline from
 intel_crtc_state
Thread-Topic: [PATCH 10/19] drm/i915/display: Remove unused dc3co_exitline
 from intel_crtc_state
Thread-Index: AQHcvUQvsKzXsVOBlk60dLJET+gRvrXdoqwg
Date: Mon, 13 Apr 2026 21:44:29 +0000
Message-ID: <DM4PR11MB63602FBD1CE52C3C81959917F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-11-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-11-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA3PR11MB9397:EE_
x-ms-office365-filtering-correlation-id: bce27a87-e2f1-4a5d-ac07-08de99a5d78e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: eDLfo6dx7iCXnIco5QLhYvbnlP+ubQZLtmA3XTx0YMSXI94yF8asdzvqhB7yMHkmde2+GTURUEzPYbQu5B5zMGL/MXROyNbOg7Z9J8PQPlYMPtAq2HyHfRXZlVzb28pogy2HN4mBASyzxdoVwHy8RUe3HrLKmeTM0hqWKpoOIGdhvcKbQXo8LYn4vvMOWHYvH45VU+JeKpUnvBbblRtN7LfmVEE+Kg0m9cXOQE4ihFszd4OTPNWRuMePRpHjmDpgRCCPyyh63cXpZKv06SVxlgLjZO07ZwZLqeTj4Nc33G7Y9SyyWAK+WHCmtGpxsY7E452G3NMNq9R15k/4LoXEDdp/aBc8og/Om55PDra8ynkrUr7p4/hZHuV6/wXe8g0JK8a97wm5YYCu4LZJURibrXcL8avw1SSS2hwGXFIjnP7CjwWT8lxTWRhQDk7DH8uvGxNM20NzKNBaKczVW+DFdX/1U6f7/S3h4+XMc7FT9nKmSMPm0j26gruw70fK123T0T4xNcwcWyP39D2YZSkIZlcgjqJdnkRva71iPlHTtdcSuF0djU2TKLebkO5WKV2YLa+Z6utbAPrruYEynwtC+pmZjzdhfLdFvLzZi7WisotqSBULcF8wKSsQNDIlq9IoHeka52UzZWxzWdCVKTv8LpbdXp+houH0hQR4nxZ8RZpRFmMGo4D8G4wmotkSFAWMPNnQfrfaxKIE7P+ecPPmdWduYC7847xs+uesp36o2ACl66/b+iJFIGMNkIeCz0eYxDHGbjwy0eYl74Fr71SfBIcIulITdLCk2POoHrSUwmo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ouPIC2jMovX/0gmedFJ2JjdmOreGsNDXhLtImqJS95tLjtGKA86NQNsYVm/c?=
 =?us-ascii?Q?5dgYzjWsrJamckoI7orRyqPH0506XF+6+9bnoaxY23rYZRCqEWaNdQnZdhqo?=
 =?us-ascii?Q?YsEJ+LGT7V1ayVIkACP3xScw2Q+2vV5sbNSclP8pNia+cgzz+B8G4aeLQPfU?=
 =?us-ascii?Q?1GzeFXwcQGzM04GntBaUQyyI6wDUATRRrBUvPRKuRe3hmhh49501I9PuPnpJ?=
 =?us-ascii?Q?/AF6Ef1aSbMbh4cm18D0mkyjV0l/xwEJkadHo8b4zYOJp392HawU/TCfwbGK?=
 =?us-ascii?Q?p6aNeMnWHSB9IzSAZe42FM5VmbY1zySUzH9HPCRcNWV4mbiOnZ3WbiPmHQ3N?=
 =?us-ascii?Q?qyiczkZfRqj3/eiWYprhFPErVXJX55lOHWn42afOcFNW53D1gptRoM6L9Aue?=
 =?us-ascii?Q?/MF3xCDu+V+aWahgbGvl7w1kd/8sDcBZ8c5Zym2O12pH08dV35i5QCkrgZkK?=
 =?us-ascii?Q?1KQpr/Crju78oI2QaIN8gtM1YFtpqdd/ceWMaLoaXh8Fe1ysuiaSUAOHWd2o?=
 =?us-ascii?Q?+8gJ3HDbdNaOfYyvSJI6cuvBTdZUoU4tc0M+u0ldSTLqqmVIYpnGiDz9rWO2?=
 =?us-ascii?Q?wAwMtOR9PurECTM7+LmivBsPfuCcEh3BmvgHNjhKD1qq/BNDHu6hkLPo1Nsp?=
 =?us-ascii?Q?fJi7gKru+qjDPtQWon7ttYkLIX5kSD3DiEF1nXUokkmWe1+LEnklO9Lkm9EK?=
 =?us-ascii?Q?/narMQqaEt+9tanQEz9DzJZbRMeRxajaOym3Zj9ZeGF1s8u3vcGvN8CSqvMx?=
 =?us-ascii?Q?qCVMfN3m807DOIWlG2oB6Rj1WT1qMiR6JopfsP0Cm8dMIEuP0x8Ee1od6zwb?=
 =?us-ascii?Q?+1S+oICNKNcqFaB4TPBGXpDohlUwRyAsIuPxNGDBL1T6mBR5pxAQ3Sseuy2b?=
 =?us-ascii?Q?EYmru0BTZnjuvBWu16/g9w6HABYlQsQ4bz4nWv9ty+VH19Nz6ZWssnVz9q9b?=
 =?us-ascii?Q?dve7Lb6rt6hE8Rs+8Hl1g7zoEwdAIDL4Td9Koh0JzmDEWOH/TbbpMpC3RUZ/?=
 =?us-ascii?Q?cFS8aCuGre4qEzmR7BiRFlWwXhP2Nar7F4IHgbQRqiWuGmW7OFhy1lanqcNN?=
 =?us-ascii?Q?3rBOIVuhwqlO+B4Nhn/Uh1DWcFNjxTMcu68FrfIsOpDHf9iV4AR00oUpqCzJ?=
 =?us-ascii?Q?nlCnakktyR7+wGLmMbGMBARWaSapuc1w/QmUOBUgoQzgSiMHAf8N5oFkcjme?=
 =?us-ascii?Q?2Rpz49IXn2KvcAB5BiU7Ujw0BEifmSs8gCFe1Qk8jrwFcG6JugnuAPbiFEgR?=
 =?us-ascii?Q?amY0QnsvwG7942BD+iXbx1lTUP+5VXVYgjfiQtvsmZdBasGcPOSzU8SSaR/N?=
 =?us-ascii?Q?1DMOAqnKgXWb0rkWlJSdgqD7scybBZmJ2AYX7MFCMT3Fn+znGsvZ/+Jje5J4?=
 =?us-ascii?Q?XukEIfq1Fz9NIspdXMUp4wD97M7+OVCN8Oyy3sXECEriFxyWQp3PPuQ0Mxdk?=
 =?us-ascii?Q?0PIruiHBEh11SlBEbPlldnoU0t/6W7+Bns1O4jy2iScORhAC2gkdiUjnDayP?=
 =?us-ascii?Q?eUMtFFkRDy369F2g/LcbQP/JB6lRlwMnPNhPi4RXbwq+AXr8gvPqruuDCdUo?=
 =?us-ascii?Q?SAe2ISxVQwtWlf70uHoXwGYGVLFyH0dmo4E8GtWE5vSBYFKUg3hn91hM+w5o?=
 =?us-ascii?Q?EaL2og7oXqp74FecNw+IsoXYHrWd/qX1GBrmsVAJO5DzP9Jv/6PUQ+kldAla?=
 =?us-ascii?Q?QTXTiu9xqnk7DFlg6imdJ5zx5er78hq7dSibRdaHoJ1Zf/UnrhsCFXxwMVFj?=
 =?us-ascii?Q?1lQVUMaKrw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: G3MRH9hlZ4ZEHjOAQAYQQVo4Z4tvClzHh5Eb/65FWi0xHcNRHCHyhJcmblJQdGI7TSEyeXBLDtcI2cafVNrYDXh2qlyT9gHyO/y/dssNX+jo0eOy59kS3cNLYdbtAf124ePi0NGWHxbPiJK8/5ha/YTnhkjd8dWa2qo03fx8sg0LWv4TC3JU9fOic41pOH1ShG+eRgpuCFb2IlGDwyOTqX1aJ6Y53sr40BrkU0afc4TXWEd6bTjnPjsy2Y7Q4q75Y39IttXQCDVBfQOiM4UAJs8tGSSsQzmhgdCFMvISpj6IVsKQ+7U8228tmvie2Uaa5dGs++apS1XFxaNKMJAYoA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bce27a87-e2f1-4a5d-ac07-08de99a5d78e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:44:29.7996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hpvrn3FrdPIBw3dzx5b2aSaEwLWiDwRNqqd1P9WXnU0OIIICSzBYZRZilX/rBTDp/rLXzdL+MJT+BqpnvTTJJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9397
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 74B6C3F39C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 10/19] drm/i915/display: Remove unused dc3co_exitline fro=
m
> intel_crtc_state
>=20
> Remove dc3co_exitline from struct intel_crtc_state, as it is not used any=
where in
> the driver.
>=20
> Also remove the corresponding register read in intel_psr_get_config().

Change Looks Good, but squash it with earlier patch (9) in the series.

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
>  drivers/gpu/drm/i915/display/intel_psr.c           | 1 -
>  2 files changed, 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 60366087038f..0a327c4df98d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1192,7 +1192,6 @@ struct intel_crtc_state {
>  	bool pkg_c_latency_used;
>  	/* Only used for state verification. */
>  	enum intel_panel_replay_dsc_support panel_replay_dsc_support;
> -	u32 dc3co_exitline;
>  	u16 su_y_granularity;
>  	u8 active_non_psr_pipes;
>  	const char *no_psr_reason;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 40adbd1c8ddc..987d49536548 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1822,7 +1822,6 @@ void intel_psr_get_config(struct intel_encoder
> *encoder,
>  	if (DISPLAY_VER(display) >=3D 12) {
>  		val =3D intel_de_read(display,
>  				    TRANS_EXITLINE(display, cpu_transcoder));
> -		pipe_config->dc3co_exitline =3D
> REG_FIELD_GET(EXITLINE_MASK, val);
>  	}
>  unlock:
>  	mutex_unlock(&intel_dp->psr.lock);
> --
> 2.43.0

