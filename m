Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C90B890202
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 15:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB38D112454;
	Thu, 28 Mar 2024 14:37:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lcOKvKye";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C1E6112454
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 14:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711636628; x=1743172628;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k6P0NvfOmzXENJdfdoDh9HNmj4dHiSnr2gsL2fXErmA=;
 b=lcOKvKye2eoNfFs6hes6eUQm8bXY5ccDsL1WqMfX68A4G+1PxP++F+wY
 7E0o7iIf3Ve9dJ8Gi1vj/tVfDSgsuw4JdoLnE46BTP1VuAkOvzPS4lPJf
 bye+KcPs0X5feHKAUlHU5AKTUtShSxGyyXM9iotWQRjT6Y6m9O0lm4KCQ
 L78eiqfRlPQWV172tm5px74+2VUHSklB8P8xRskvGVK5pHeGcKiGV15DH
 QfG58swBokOGoqYuo9+7Uuf72pH9Xh/PFJQrNlDnE4HKvGvg3Pquo/uLF
 UmLy16eGRYFCvbjG20CtoykXLNSac2UAXw6cjLhNYD8QyRr5CMm7oIAlV Q==;
X-CSE-ConnectionGUID: Zbi/NMhIRPWjyPTZd8QCvA==
X-CSE-MsgGUID: FR0DpAOOR+SaJiHlSnJtQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6904451"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6904451"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 07:37:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="21131375"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 07:37:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 07:37:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 07:37:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 07:37:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 07:37:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Df9rx4QrDQ0As/NzNDn6ecSV6+RXWfYpCxm7hA04eDvHNCxW6cFCqESZamxWYduEPk9E+/IIPk+0j0NYma7kih3lebzcKTHQNVcfWjt3fekHMFJXcAWz1464UOSyka5sd0edGHrvUEHLmLCDxIrPBKO5LBM/bjexZ0ZZVImRMKAICL1QAjrkvEM4WnC4J02hXcIL6vFOytHSDu8h2VW5Wi3CCKM7rTO7sTl7noaiEjd5uin7s5bIe8uz4XjTua/Zvzt+EUVvHeroOugSSJMB1c51kDW0fs5+PuR5BQ/Vp9cSXOeOpHZ5sITzLXOquVUU8DBQyCSvcoBMAWSk2JzcCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k6P0NvfOmzXENJdfdoDh9HNmj4dHiSnr2gsL2fXErmA=;
 b=dqHGYxSPWGsnmabm/SS4MFOWB+57/ukt0mIMH4vpG7qHQjq7rq/tj0BsbVbgJLoOcEQLjY7DKaBjF8PMDUAgXBNzE/FIogrrEA4LbwZ93CegLJtBqTFKut8y+CeneerfxdTK+IxtT1DjU5F0ZZGWi79M/XzG4UZAoTOMxAa6oPeAUFsN/sWLsmr9W4pw3A//OqqDZ7ZZrrY4D/XaQoExIJWdinT1Xf4zeoN8FlntYqxqoPuFl6qn26phJLLRGc86faHr3IxfgAiTCtJBWwGIvQMYBw2dRel8zO8CSA4ToaUMKIocQ4RaxApDNKTiI6ixeJMsMz13p+Xcy7RuN7w1AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB6889.namprd11.prod.outlook.com (2603:10b6:930:5e::9)
 by PH7PR11MB6403.namprd11.prod.outlook.com (2603:10b6:510:1f9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 14:37:01 +0000
Received: from CY8PR11MB6889.namprd11.prod.outlook.com
 ([fe80::c4f4:e3f2:80a1:51e6]) by CY8PR11MB6889.namprd11.prod.outlook.com
 ([fe80::c4f4:e3f2:80a1:51e6%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 14:37:00 +0000
From: "Joshi, Kunal1" <kunal1.joshi@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH] drm/i915/display_debugfs: Remove check for crtc in force
 bigjoiner
Thread-Topic: [PATCH] drm/i915/display_debugfs: Remove check for crtc in force
 bigjoiner
Thread-Index: AQHagRsoFBEeXkasYkq5DOHrg7zdLrFNOGeQ
Date: Thu, 28 Mar 2024 14:37:00 +0000
Message-ID: <CY8PR11MB6889040F96A80F398E6B0A45DA3B2@CY8PR11MB6889.namprd11.prod.outlook.com>
References: <20240328141421.609982-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240328141421.609982-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB6889:EE_|PH7PR11MB6403:EE_
x-ms-office365-filtering-correlation-id: 53fe7cfe-5af2-4adc-3c21-08dc4f348767
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XP5RzwDzbPBX6Y0LfrnZ/LmSI2ThFhICjU2EoiomhaAEqR0pkZOSLQ9QEo4YFTKt46/zgbS9GPJeQjwl3CFnuNkVNns73ba7mwLz1b7E2IsjfxI5kREzCIJWppQxKjG3HSO4hO82UZ3lhsWkssGhYnMWVE7zJ4/m5kUukcbtuZeytGYsuzTCHeIwi6UiUU619GkHUIkxVfBFIkuS8QpasqD9xHchYn80RcENLGkofEtkJkvM2adQBHmlZyu/Op23G0S7To7fj9DZvQG6uwlV7Y0H4BbV5ISOd5p69gixT7N4QRXjliUw8nt6/8z9QkqCCKBoog767CY79stOUQBYMTZDa2T9pCmbYRZjrA3ZXruzYltuGUe5LGFRJhhsosGlePm3xP7jttDDea1nYrK2cthdfgT9N4yqfr/kWlMBWgQ+50k6wQtnbr6szLELclkabwMPnZEQB6olZk2zhsMeiqKczIdSSEgX1FMAPx+zLxYsXUSKcft9VIdeChFdFzfxselVeI+G3plbVaSfsOCAVgL07nT64V8EsZ9aW204XCt57dwdl7QXR2CHP6reASv37BNqpRl8UUAOfAsyIVikcwF6mLi1iODa1L5FBA0vcMsyJCghjWovgwNLIMC0bSqz2hNiRTkpwzj6EhDN3yGLYmW0lJuBrb0N2IN8B/fGHI10gJpwalkAshs2gLHrNiYIJAjELdsN4VFYg1U2q3EQfg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB6889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0wLtzDGaTVSxln3oV3j2Pp4Iz9a6W8iMH3x6op5of5gwRrAgHvxAnpWsT69E?=
 =?us-ascii?Q?O9sQahI5MEfAR1JqmhQUNg8SUQW6eDPSWOU4dx0jGjRTrETiDeQhqCBrk+x/?=
 =?us-ascii?Q?ypk/3k3zwxVstH/UMLhUHkVrfvDIi87l3pdGknaeviXsL8/BMDAUreDE7zSW?=
 =?us-ascii?Q?xpOjJvQF7D1pKWrOpKay2B/ZiJ2BzB9QBjzDMXNP5115hiQrGx483N8+biny?=
 =?us-ascii?Q?hdOFtSrNupvysfTCYF7zSQlG+51OR5siQWlOmimzlZO9qjjEHG6U7xUTELze?=
 =?us-ascii?Q?kikJwujKxWfJD5gRhzWaYxGrWcBHW96zs5m7Sd9cyoHO55rzwykZ7gMcnteD?=
 =?us-ascii?Q?RORugddMLd2C+P9SIR4s3WPLeBZiGaZiVJLPavp4832fV4i+nFoYjh8LkU8k?=
 =?us-ascii?Q?eRWIuADj0wIGk6jJJOvKoCv13rhoIZOkq61OxNCw1w2eHDJp9sbD3O9nCeFr?=
 =?us-ascii?Q?MM42/tKIjh7Aj2Rz2CIPFh3oFv3P/ZtkQ131JuM8g63U/gPaADab99v/YG13?=
 =?us-ascii?Q?r9ARyJQKTgeL9xuSz3lNrJjKZ/AxVSjzZMR+tcniMtZ6AyAf166UE6a7Yxx/?=
 =?us-ascii?Q?esP0nTwj3tCE8zDPIIcWx7A0vfNxnq/7WU/j/KHbUC6r/6GPPiM0GC56NWAL?=
 =?us-ascii?Q?fc4T95C0QV4BwFK9isVvFXS6c8YOR6NZX1xHbIFsaqLVN8qPE8H2SyYDi1ra?=
 =?us-ascii?Q?6Og0nk7+mUiyW/ywsiFm99q3VBPdjU//QqERZq7gsXfvthlS76gzwY9tyOpy?=
 =?us-ascii?Q?3p/OccMma7LWH87AIhl2s73W9KdaNLcZ6iXUnuyOTXWi421c1UJwFC33V+t/?=
 =?us-ascii?Q?9KuLPaubk8o0bFve1P5qqf1jzITRlwULvOVyVC483vK8Ocah0jdvD4DtJ3Br?=
 =?us-ascii?Q?aBicSYWjLUvmR1BkDHagA/csZRRjkMpfkqao3Tl7dHUHjpEE1LdFQKoNAn5n?=
 =?us-ascii?Q?eoozIIg4k5je6JDW5ztrqWgwyq+Tef4KTHo8gryAA4AAjZt8N+GwMcpbyctf?=
 =?us-ascii?Q?dom9fLLPcylPPvY6Efmlp3oPiFmef1McZ2MphLH+bdwXnlh0/tcQgqWgBCfV?=
 =?us-ascii?Q?kwq9J9QtXQ742lgzGpHIpE/GqjoH3GC2BvKTCrmYnJf4KlpjGmb7lFkrrX9A?=
 =?us-ascii?Q?wTa4M1sb+rQkO0ZCHGNt7IoIzofmxeUqTw3+vo74tSj2Ys73Ik8XBXt+mUrm?=
 =?us-ascii?Q?oFl2E4rKDXbvVu+zze5u9eEL5VVecIKaOhHR+jMuYzM8+mT+lpMqGmF8Npw/?=
 =?us-ascii?Q?lmmlVz/gCntZzWqdzKUOODKjBnTmQNpWw4j0tyioNYDuGCrRtpmWruhjcldj?=
 =?us-ascii?Q?V5VjCkcWtJppdSXpw2Z5QaPdbuN/V7F/JLejv9++k1DbL4l9mnA8wt5i9Y/C?=
 =?us-ascii?Q?f//+JUOJwROYFR79+BHcUpZYk9d0nvvV/fMRfD53MEoQ5LcL5mN39IAaeROa?=
 =?us-ascii?Q?mlxz4B3f45kaTgXHuqL4PGp9O9/iGJvq8WFb4NOCDawbEIK5MqEn3ymJqlwy?=
 =?us-ascii?Q?mwSIsHrmtaVUT0dDoAmWUykJaudB+Bo08Skn7eUQBplOAAzlVQr0aFxp5nVL?=
 =?us-ascii?Q?kCOoDnYj3BPqAxTqVNLAMrRtX2Pvt8eG5+9Qxj/U?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB6889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53fe7cfe-5af2-4adc-3c21-08dc4f348767
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 14:37:00.7875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nr091C6Y/WF7SwHBIh8nrCWPKw/gQHMoSxLSpNhA8Gg2cA5baoUVigCZYQ8Y4+NiY+l1Xjrela2YHQcynJ+Qpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6403
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

Tested-by: Kunal Joshi <kunal1.joshi@intel.com>
