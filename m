Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D017CD8FC9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2EA10E19F;
	Tue, 23 Dec 2025 10:56:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EAtj6oE8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C95A10E262;
 Tue, 23 Dec 2025 10:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766487414; x=1798023414;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LB/2XZBjitoDc46lmzLyAh5KmKpP4DuHDdGGPChmP8Y=;
 b=EAtj6oE8x5r1r3FyAYMcvbap5zJ63VGXjFgywz09s5QDlJl//t9sCtEL
 /Be9RejvFUJYU0uSJu4irMYSC5qpDjPFxJPj+gNC2H5vWSD22wAIKg13I
 USZiCbxI1DNAF1FJFqp2M3xM3Cnd5ZcRyVdKGZWB61XjLxYsUiJGMUWz+
 GVVRPV9UKUGgLWD58ju3fM1klG5Qkw6Ne6KqYAglEFB3mkkZZc0sUo7+d
 LHliQADAlIs8tAoymrE22QTq0J51bOFoSsr1dAYRgNneCcz8kK0b2e008
 Fbla3uHw95OxksZVeUw0QHm01n7qk/LjYlFLTi3Yq0kLkWFR43E132w9j w==;
X-CSE-ConnectionGUID: 3c1XtsfZSm+xRWjW8tKKZA==
X-CSE-MsgGUID: BcbOiz/SQEOp0Jw675+Txg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79453630"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="79453630"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:56:54 -0800
X-CSE-ConnectionGUID: POvPK7V6QZ2XEsiEFEdTOQ==
X-CSE-MsgGUID: 1sIE982rTlenA3SIaA6fqA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:56:54 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 02:56:53 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 02:56:53 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 02:56:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sbJ2tY9TbyckQKGD2ZngYSpSiDlOlmBpJ/B5/PDKw9+a78HCg0mVSkQbbEYe1YAEc/FJEn4fNs34fV2gF0JHs1tKJ2nYlmsjUBmmUomJjNekD6Sbv3DN83H7hCsGNe1Vx7H1eyeUnzz/+qN9r2K43z82fBdYU51DCjU+tINYBc9dZOt+GVzCWN2vJWbzFKKoy6Bn2TPeRmNMSCg7CO8rCQmEF0GNNdcsiXjmTSrERYFH+ViGNOFcxeLGMZ7FrHoIQBm/pMXqdHmqkilqmfih1dltd+TyR8mdlrVoD6k9Y8iimJt5zbTT9VNtU0XbLklGeCoIyREvziClLXlwKHuVcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uoxptF/K/Sgznpb7Jjb4s90tEJPHI1oWOipqPwC5kw8=;
 b=Qq8gru1V26uNtKcLj764TVlB2QkoIrEJhv2BdW/CeBXmZHOE8v2rZsI9WaT2RVMk3b9noEi3USM5VVbt8oGwr+4jgnrHEYaoCtgZ+k9rqo6XDHEm3Bv0foHlh20ySF4EkApi3A1XMw0y2AlSfiIr81FEA5EST0QstewcNpx7YYiSovd3T8RFbv/qQU7plDZBpLzxFZAV5BDw5E2YoTLI5SZRjMd0caShjX9hb/ixhqy86rcULr/kkW1GHwWSxrBLnBGo4XXn7h1c8gJtvXFyAksADeBNdj+zoZCfMBeEta0Q2VJCdIWU6NG47NGxzynidP/mSpvTItGy2GK3aovHpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH0PR11MB5110.namprd11.prod.outlook.com (2603:10b6:510:3f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Tue, 23 Dec
 2025 10:56:46 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%5]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 10:56:45 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
Thread-Topic: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
Thread-Index: AQHcY16D/VJveTMVWUG8hTe9PhvJKrUiZ0iAgAzGLDA=
Date: Tue, 23 Dec 2025 10:56:45 +0000
Message-ID: <IA1PR11MB6348001AB6F6308E95CC86E7B2B5A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-18-mitulkumar.ajitkumar.golani@intel.com>
 <DM4PR11MB6360541A9A48AF63B009F6A2F4ADA@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360541A9A48AF63B009F6A2F4ADA@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH0PR11MB5110:EE_
x-ms-office365-filtering-correlation-id: d501ce4b-51a7-444f-c33f-08de4211f6fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?V083+69CqvnJDSnu+nl7AKNuzOrTV6YKM3gzl4to7a94e6kiDKaLYZut1rWk?=
 =?us-ascii?Q?/JJAqDjLoqugXZB9mK3Ms8oANzJ0rMS/uVzo9d8rolG8daFnaKZ6XWYUfwVA?=
 =?us-ascii?Q?f8GugDJAYJVN/llbJOLNKW63gZgq9rcW751TF+ZKbPLZDfgT1uaCQLMZYbnW?=
 =?us-ascii?Q?LaXOiALvQI/rRSq3f6yymKPKanTkqlvImYqFakH/Z94twajXzVYLhwc4Onrw?=
 =?us-ascii?Q?SSm6gpjfFMMXe5c0ENYHLKnZjxMUN0f7iz2jV8lBeTwlbGN6d+SvzHV/xwyn?=
 =?us-ascii?Q?hKEYSMGOHJ3KALWp9MS5dHxlQ7mosGrbSZ17ccxk1Az/IK5QlvivoUywOmPO?=
 =?us-ascii?Q?Kw3Idx4Upg7aDblMmibaS0zIjOhClWucghjjgLgvijOAVbBmsLh8+0mi4vZT?=
 =?us-ascii?Q?8BxSM43uHaMJB7SPonCkbwoDLHkxRY0Wmgm7G+XPxBJpYEbquXpn20eoK1fV?=
 =?us-ascii?Q?Spx5b64FY1v2TZ7eYum10EddfyxQa+3wwB4ruvQpTEDiPdY0VEP/4bRuK6CS?=
 =?us-ascii?Q?8+XGiRgxmKVt06zNFZjWAh8JtrdbGzppDjePd34NhzdvDGPWMwkZOmOM904j?=
 =?us-ascii?Q?KYKLpsjcyfX2bCKDOTNs5DBxAHHrnesK0HqrWRwl0Ow0Is4f9k6pg1Ilz9NH?=
 =?us-ascii?Q?KQIK1FHtewojtE7uU177pDfVYfZpPPIkvoLfcsVRcZSMUU8m1zLT+6KxIIgR?=
 =?us-ascii?Q?IggDUmuTtRPTqj8A1vYl7ekmAoOMofFYisIlfACSb2++TxFSMgne87jJnJMz?=
 =?us-ascii?Q?IpUHq0dV+yQf6Hv4vsID8mV30rWhzVbb/cx446/lnmafFXZByEUukbMjpjgO?=
 =?us-ascii?Q?OSo733h6PITruo6sepJ3DTaQeymXIwhKlOKOeav0E9LA9j6SF1BUvqoXDcdi?=
 =?us-ascii?Q?KTaQG+DG8LG7l2/k8eqOetfISD5z43z17pjsBlhV5QLY4iUwYW2XiMdpwnVb?=
 =?us-ascii?Q?9fNnXLfohQwjlz9FR6o5pKDMn3M19yMF/x/Kjh+Fx/6G56Xe+Dy9aolLr+kO?=
 =?us-ascii?Q?6eW96DuY/cWs0KJWrhL3opdXqsdP+M08kcuGP+PjnUWUKsyeSAbTuN7WJdhE?=
 =?us-ascii?Q?KApwwN0o7TRkJP5XIHxYBBvuCQIEmWrOepQEgp20RCyfu3+WyjRivvDu7rjY?=
 =?us-ascii?Q?RXVzWGKU1VqVukR+E6qLZo7UBxuYqq6wHgokKidRFc1DXLefC2H0RYOUP0Wg?=
 =?us-ascii?Q?c6XJ+gbXKKYhXJEImp3Pk0C0FCKwTjTneS1fROT3gA8KtaOo3+8YoQEWjqlV?=
 =?us-ascii?Q?PN/pu2E0ggKHM0FYoI/HZOwghwjnW+iDfl3HsdWNpR31m6t5O1ifdkM5uW4H?=
 =?us-ascii?Q?7nveL5R9sG1HZi/Y/LhUDI/4x5lxfjIcknwy5j9Z/x4kXBHBKlgkhL2AGroD?=
 =?us-ascii?Q?7Ahaxsaz6LN6wCuK0hI+z6VHr/vqkUmVZvr4sAeVOrGen9+Hzn66VqT/0moF?=
 =?us-ascii?Q?LdKK/PurmJy1Yf0/Tr9xNLHm8Px3WDpNDPgRJOn02BKQjPUgvJO8TrAGmwyt?=
 =?us-ascii?Q?K2QFeVIeuVFesFeDzEtBUAmWW2NDAM64XGU9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HcMk0LcHYtaSU9AmVVoryFWabexwroz5fhNyoq8xc62+8ARoeCHiBAvSQYK9?=
 =?us-ascii?Q?HyE0sN4QHw+vUB8BL7Kh+eSMyUMPB+j2DYQR69R4PlI8nHGaIoqsLXXvu91s?=
 =?us-ascii?Q?y5oIQKL88QxfyQnIgRmeMN4bxYb17xlQ0wtMnOcpTIRG1zNiEwszmLV2/ZxS?=
 =?us-ascii?Q?ieOgHbGiJPWf7xrdkOSqYhKmJm/+W05+RR+651PJqFlTzRYeetF8CsmDnEhq?=
 =?us-ascii?Q?ygQSsiiobu362NphAr0I925B6UJ8B5ATkNDoqgwyKTSpHT4EojajV359c6bj?=
 =?us-ascii?Q?OeUToiVu0+Pq8mImN+00AseYdDsxfokFX0GoS/3qLwpxOwVIbrxmQNLmDvTh?=
 =?us-ascii?Q?FrUhauL8pGJD4Mm8Jk+PZLZc/oqN/E5xKfnlElVMHwt9AB7JMGY9AUV9AAGU?=
 =?us-ascii?Q?fV4zlVBMsg1x10MqcyhxK1YM0qoYwvT3lRwk5apj/0jknPwwAC7KXryN0fqA?=
 =?us-ascii?Q?bcU6uuuGICO8UYqGAKRDDi2fW+gpm5qCFA3GwCIY0FQkgrnk2K6PVW1QCSBS?=
 =?us-ascii?Q?hQt++WQpnFA4BnNbMpcGmIZtIdNoApU2rMVVtIqaoEF9HV7bAlZNSG4CEL8X?=
 =?us-ascii?Q?Rjl9+GTkUHHH1nQxbnvnCkbWtLJoEFm5YvQjlA+rv0XRPQUWrkb0Slpbi1+e?=
 =?us-ascii?Q?5lyRBolvR24Z/ww3VqTVXHgH89m0WFDewqt1yNSnfk5wmcRAJcDcwuE4Ox6P?=
 =?us-ascii?Q?VCC064hgQlHmSvtrQmEqMLsmLRHRg+odrodyaPaAwSp8QEDvY+R9WHQUXTl/?=
 =?us-ascii?Q?BhMQ2+RsoULvTPR5fA9xmw6L4wvqclDxBtt0GcVZU8VDbI0qL5gZOp+0H57A?=
 =?us-ascii?Q?eZNISVjdBkBDHvJ4D7XkYg9tpHr5fwPIm5q16fFhjlM9T8ApCszIfpbXHNVH?=
 =?us-ascii?Q?vytp3DeB88UIuKeQv1lLQOvvUfNjDTQVs6tGSwVC9HQ7tx/v4uHGIWk1toqV?=
 =?us-ascii?Q?bcE41yo0y0geauyoJtXAAztqdXSeaE7c84AmBMjoLFK+jvF3wLtv66z4IL7Z?=
 =?us-ascii?Q?hdqzG4mLfnPlFZZ8HHhVT+r/awhkMvNTgu2NY10efKZ0JKkcsTT9S2x7gpMV?=
 =?us-ascii?Q?e1lQJ7jkbZ5fCZ2JMzwCWQ33dtgJQnKezpPCJFyQp/VRuddsJq+1cAwq5XiU?=
 =?us-ascii?Q?5S3M8MC5jICVDo/QOHiwpZUrugeCIOCWW9WCMh71aI11ThHrXQrvWTnidzjd?=
 =?us-ascii?Q?1d+gzAzJ+9jfT+7MrKclMNUgcqqChFoM4FHskDC7ytZvmYt3T0IY3Wf7pM8D?=
 =?us-ascii?Q?jzFxujMjlkYPPwLe4z0we9ZQX19Ewl9zyI0H0V5MO9u2KFGs68iLnNDrjcwH?=
 =?us-ascii?Q?iGIF4r4Dz9+uUywD9M/vnXK7zBAfpME/1VewtQ/v9KS9erC6sF+ZJjNbrzL5?=
 =?us-ascii?Q?2QoX7CDccoJNejqZdRLuIAoeTSkBwVxPzlAItpL/Q7o5b+CfvhS27tKFH8FI?=
 =?us-ascii?Q?FXsC801I/wRXSJlgW/csEpf9SDrYLP+gdSaCN454JgehdXD3wAlExgBPf04q?=
 =?us-ascii?Q?ZhdSrBc1t7xXyOnpoyi/wQTgErKcTOnLr/IUCregDX7owL1puwMNHC4azJsv?=
 =?us-ascii?Q?amXy+TQue5qfkXfQ92sY3fsXJDELqlTpp2ZXxB/86Oe4fcnwHYnVABx9LzCd?=
 =?us-ascii?Q?hUMlVITwIBnW6UgBzGV7JQXmJhO4lhNIcxb3fvpEFxSi3dKmMTOgGLMmq3lW?=
 =?us-ascii?Q?Gs+cMR8oDeu3K+l8jgm1WTiKF4Qq/0s+I3+PS8B/UsZLcR+NOMqW9TlOyvSc?=
 =?us-ascii?Q?WcAjfGz2dGmD6HnsgySXHBp4FU+/s1V+/5OG7qn5Ht5fhXaA3r8Z?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d501ce4b-51a7-444f-c33f-08de4211f6fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2025 10:56:45.8772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4s4GIeAIAkxaYs5twvop61BY2X1lZ2XfAVFes9c99cd6tnWvS7Nrr3T9l5r2552eh2GJ+RcpGA8MTu1iBBTlPnYu3EZiFHlwT3sMSaAJGgTcEU2kTJklWtaIcv1yE25p
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5110
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



> -----Original Message-----
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: 15 December 2025 13:17
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; ville.syrjala@linux.intel.com; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: RE: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
>=20
>=20
>=20
> > -----Original Message-----
> > From: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Sent: Tuesday, December 2, 2025 1:07 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; ville.syrjala@linux.intel.com; Shankar,
> > Uma <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> > Subject: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
> >
> > Enable DC Balance from vrr compute config and related hw flag.
> > Also to add pipe restrictions along with this.
> >
> > --v2:
> > - Use dc balance check instead of source restriction.
> > --v3:
> > - Club pipe restriction check with dc balance enablement. (Ankit)
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vrr.c | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index ba8b3c664e70..db74744ddb31 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -399,6 +399,7 @@ intel_vrr_dc_balance_compute_config(struct
> > intel_crtc_state *crtc_state)
> >  	crtc_state->vrr.dc_balance.vblank_target =3D
> >  		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
> >  			     DCB_BLANK_TARGET, 100);
> > +	crtc_state->vrr.dc_balance.enable =3D true;
> >  }
> >
> >  void
> > @@ -789,6 +790,7 @@ intel_vrr_enable_dc_balancing(const struct
> > intel_crtc_state *crtc_state)
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> > +	u32 vrr_ctl =3D intel_de_read(display, TRANS_VRR_CTL(display,
> > +cpu_transcoder));
>=20
> It would be good to update the state and program everything together at o=
ne
> place, to avoid this read and update here.

Hi Uma,

As currently we are not specifically tracking vrr_enable as part of trans_v=
rr_ctl and in crtc_state. Possibly can we add this as future action item if=
 it works ?=20

Regards,
Mitul

>=20
> With above fixed, this is
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> >
> >  	if (!crtc_state->vrr.dc_balance.enable)
> >  		return;
> > @@ -827,6 +829,9 @@ intel_vrr_enable_dc_balancing(const struct
> > intel_crtc_state *crtc_state)
> >  	intel_de_write(display,
> > TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
> >  		       ADAPTIVE_SYNC_COUNTER_EN);
> >  	intel_pipedmc_dcb_enable(NULL, crtc);
> > +
> > +	vrr_ctl |=3D VRR_CTL_DCB_ADJ_ENABLE;
> > +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > +vrr_ctl);
> >  }
> >
> >  static void
> > @@ -836,6 +841,7 @@ intel_vrr_disable_dc_balancing(const struct
> > intel_crtc_state *old_crtc_state)
> >  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
> >  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> > +	u32 vrr_ctl =3D intel_de_read(display, TRANS_VRR_CTL(display,
> > +cpu_transcoder));
> >
> >  	if (!old_crtc_state->vrr.dc_balance.enable)
> >  		return;
> > @@ -858,6 +864,9 @@ intel_vrr_disable_dc_balancing(const struct
> > intel_crtc_state *old_crtc_state)
> >  	intel_de_write(display,
> > TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
> >  	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
> >  	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder),
> 0);
> > +
> > +	vrr_ctl &=3D ~VRR_CTL_DCB_ADJ_ENABLE;
> > +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > +vrr_ctl);
> >  }
> >
> >  static void intel_vrr_tg_enable(const struct intel_crtc_state
> > *crtc_state, @@ -
> > 963,7 +972,7 @@ void intel_vrr_get_dc_balance_config(struct
> > intel_crtc_state
> > *crtc_state)
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> >
> > -	if (!HAS_VRR_DC_BALANCE(display))
> > +	if (!intel_vrr_dc_balance_possible(crtc_state))
> >  		return;
> >
> >  	reg_val =3D intel_de_read(display, PIPEDMC_DCB_VMIN(pipe));
> > --
> > 2.48.1

