Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKOEEGLF1Wkx9gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 05:02:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30CA3B6731
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 05:02:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6781710E507;
	Wed,  8 Apr 2026 03:02:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DV4ahEIH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF39B10E507;
 Wed,  8 Apr 2026 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775617373; x=1807153373;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L+h18vOm0dhcwchrjWOv3EofioMx/VLkokL9W8lo6ZY=;
 b=DV4ahEIHF0GhXXa/Nb4j/u85/j9tAwYpcEHPBiBlvPXfg2jy+reZu+so
 02ShQvQsT5bZ9Ruchms1LGFhQVN+ZgApOmFcU4g+o19Fz2wLZJbk89O+N
 DXi8AyUovCPrf0O5jz+3m+bvNNLGd6d/7Z7GicRm/rmM12Iui3yD9aUha
 MsTbcB6k2uL5K8Zh6PdBqnxqTPlrRQQIDHkg7mH00VCeGpxL1WSogPAWJ
 3GyhH53T3tlrYn/IM/IEUlwi7eyyd6vQNSdByzxfErzOw8ZwFUXYoQYYE
 U8OOdZ+OtJ0N+sCS/1W5BKJsreoinXfS5PcE2kPY9FCIZYxXOGWX/gU/h Q==;
X-CSE-ConnectionGUID: 372eJB0LT3uYl/ATszCOfw==
X-CSE-MsgGUID: 1sp2iRCaT6auarHqnScXFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76312389"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="76312389"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 20:02:53 -0700
X-CSE-ConnectionGUID: zXWqoi/7QKSTl310H58ZpQ==
X-CSE-MsgGUID: ja3kqnEzRWKPzmbnypE4ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="221797975"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 20:02:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 20:02:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 20:02:52 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 20:02:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JbgHi0yQeBg2IHeOU5Xhcs/4k3+x5wDVCRWF1p8FPFtipEZaIbTqmc8OwNZBXdVxVlAZLcxqwaYH3bCq7CqXv9pjVZ2LeZ4ghE+bc2EQBWB48UxR+ESft7/cosY5gNPt5dVPvhBKShxWSLjOyNJw1+yVlTfATOY+4yt9uhAu0BRRJ19woWtg40SwNsT8epXfmPU2Yk2zOCqthJQ/MJyz8KRZGhmjk5+T726lhieUrIN2qI6XpiVBKvVQ+g6XTKjqL+heqNYP6jqGPjrFzvM5b36KEBl4fnuVl8TVpk4RrBCNGgp6zvI7KvXZktoiSk0M0yKJB0KspaJWBw6pCVRUnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lCKAEW87vE3PlwpPXrhIWmP3Em3CWZjnf+rnMAtAjYE=;
 b=Ds9cPkims5VyATAGbOpmJqZv5koj+kdnEsMr1lpWulGKxY78PKyS2OwfYSrvaBZpEOc9+50D/c5CtCPZTJXY6dLWIgmj1SUs9H0H6iD73NyoPtZEfB/LIHCnmlg4UjptBkjI+lfzjD5cFP154SKXy7sBfyfJe44uAcNi/kif1UDEIEBuXaU6WC7UoQYTlQqPgXTnkftUE2A3mRy76v6X4TS8XnAadVxDDpNY9TPZUltGkpboPh5aqMhPViuRxnUNxg+orbtPFuxSNWhwyQtQI2rTP9WhIJ45ItrP1jsU3p+zHRqEdFeOpnN6xSRNQYMv7e12Vf2JvHMEBOsz47TE5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS3PR11MB9672.namprd11.prod.outlook.com
 (2603:10b6:8:38e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 03:02:49 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Wed, 8 Apr 2026
 03:02:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "S, Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame
 capture function
Thread-Topic: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame
 capture function
Thread-Index: AQHcvEe/sqXrhTR/U0iRcCIR2LLigLXTWFMAgAE2/hA=
Date: Wed, 8 Apr 2026 03:02:48 +0000
Message-ID: <DM3PPF208195D8DF60E2C747454439C4575E35BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-19-suraj.kandpal@intel.com>
 <5384497d771f106f37172d84c7caf5fc0991b553@intel.com>
In-Reply-To: <5384497d771f106f37172d84c7caf5fc0991b553@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS3PR11MB9672:EE_
x-ms-office365-filtering-correlation-id: 5efc9ae2-cd1a-4b2f-913a-08de951b512e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: UDQiZwTpNPQ4fMohP19TxevaXyLNksFXo5xaBMfawTXxgHnmydoFPxB4wTusfIS3wBipQcM+Mdp588o6dAr//xF56XWbLh6l3Q+UtFOkyRUaIvUkbo1QjR6SnhvNaXXyAClyQKwk9uo7phjJ2c323mgVGusEAyE7Y7HAls7Vn82M5aWk5zzHd7Ka+2kItDR4lPQaGeaQV2qrU1IisYlP0sH66xUyyqAFb6Gznbc7+Ne1Pv+UX3Otw4x4rsfBfn0Y9/kPqWpMMAnDN6y35oiRAwc9zJdvgenzQm9sjR5q/XejH8FkEaVoHLdbW8CSYkSazIjlHHW3XWLBprD7b46zn4jj1x3rx5AhhTRW+g+eI7t+u3JH2K12B8vq5GIloMeAA6msMPicgzjIKg5OTBa+6zF72hPKADOjZDWmpI82zJ/REmcvu+iZBAQdtgpOuZoD2c/OUztTsRxpY/COQ6fNEmN3trEZYUR1M1Ko9RhRrFHBadceZb4lX9bqqwfQkGncLsW1CzJoRVa6ahjFihtq3gGlX4QZYl04qCXKWXcSzP7o7hY39hYnnxfviIDPCDnEeQDRjNMcFeMaCUmgFvA5PC5bPawfx+95gkUaJKuZRfCHS7jm0jLtCxloMqSY7s1utrzZ/IN1WoVGENJrLUt0s/Jsy7T3XTicZ1je1ZCGety+7tkON/2PwhnjMHOx61K/n2jnkku01b51r9Xforu2OdyKltkxx0i4l2DOcqoR9uH2j/CNPSttQAetO8pIO7FH23uqo8dVUZIb6bHuJd9gxmDe4m8SKMUYvXkzbflYAjc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aSddNvz16fcpSMJ85GjU/E4dXxx4cPo68Hp1QHIslBAfjqqec14V+YkNNBmL?=
 =?us-ascii?Q?lzTY891eBJEC0VX+jW8wpCmpY60/sGaINVn9bje7jc7FH03xpzqK2z4sDuPp?=
 =?us-ascii?Q?S8bviS0CExm90n9heNU+ElmYZen9HGwRS+/ZvUTjC54vrnEBD6uYRlz3LWy2?=
 =?us-ascii?Q?ZZCGBbT2v5SinwnYkD+x/5efIv2CZ6twA9U9671jQ+9sD+cbtliB41vIq73o?=
 =?us-ascii?Q?n04R+MXL+jpU7W7mCzTAX3BlTFvkadqYniSOqtMeszhvmvpqVy4d6n6jDObF?=
 =?us-ascii?Q?VD9Fmsg2A2BZn53XgTSiiCFTd/rv6FUFmxs6tXDK3oAAxXpbfmFAyNVOydsB?=
 =?us-ascii?Q?jlBKBlh0CoDloWgd2wDVzghgOntCbG1QPMWFVPXSKZ6Ka+x4LYzYYd9HxGyW?=
 =?us-ascii?Q?bQ9/98Dsh1m+h+2AIYXjm2sL5yywr8Q+R567DlZ1/NOwi9DFB8MX75trWMKd?=
 =?us-ascii?Q?KKMhqAOtea3DuX3/j48Q8mEdwuLoeFexB1sgrFNE/kFfrj2Pm2AROnPezXn1?=
 =?us-ascii?Q?GZUBjjFzxjrxrtQwKFtQuDDyT6UE/9wshj9QayKGH/E7jTjJfTYk2+5RXETv?=
 =?us-ascii?Q?FXKctwFGezonTUQOdq82dtaoLLiwHT0jSiACkjUWuRDp1R3xNGjqdwjXO6pU?=
 =?us-ascii?Q?iyOaLFHSjipREFki4oachs+eVjzCoPN02VIduAjy2KdKwul8eZf5PGtMauYF?=
 =?us-ascii?Q?Mp1+eW0iNAWrwPPSD7BTVefHBEx6ZNSq96LkY4G+dlJKbhwSJbhylwbAaUcQ?=
 =?us-ascii?Q?TlxCPg0AxKKoi9/LwW6rpULIU7x9bmtdOLKjXfjQsRtUHoAIO/jvUUG+OeN5?=
 =?us-ascii?Q?BBuuiCoojuo3NTg0obsPByYcoGhndHvFOzqaoWVVMlLCXdLDsP3qO7GZar1m?=
 =?us-ascii?Q?CBA0WxOuTEdcRUyXvBBLbyM9GOSDiuLTAwCdtUs2bvR5cvMP/u6hQMWz3CUm?=
 =?us-ascii?Q?QnjHebiVNXe062Yuec2EjT4nwoy9Aa/aUhzm+0dk45qiAC5qmHEu9RS9s+aC?=
 =?us-ascii?Q?QPzIWEvExkNK+Gxy9wdDu4PMvJMLlPmtr2V1yojRORtuGUrVN/lTN9Hqx6JN?=
 =?us-ascii?Q?7e2iqIS6rtD5WnRN0f+mq7C6l/QteWQ2xxhD5PCKbo2da0NRwFmePjgZgS7N?=
 =?us-ascii?Q?g7UTwyt8qWk2rhxreyyGZaPT/zoD4MN/kwKZ8CcB8+AmSN6ehzw5pZPgYGDP?=
 =?us-ascii?Q?tgkUEIWjGhxWSmwUxE5hhQzPUJT1agqK18QdXGwta+SoCzjcOokJbww5TwCo?=
 =?us-ascii?Q?WjRY7T2SxU6+bGXSQvKYAij4bqfEFfwEjdOiI1gz6YsoWbCdtUiCM0t9s79C?=
 =?us-ascii?Q?VgPBmyLcm/BolYH+ZvC1wxBbsBTgXajQQ1jVxz1al0HmY4NrjkMhB3/pr9Hm?=
 =?us-ascii?Q?B9AY57IW5wjjdcv0MY+NebUtbI+rL9To3/yFonawA22MB8H5LSUPztSlqNKW?=
 =?us-ascii?Q?u/sjDIPlo1zV62KYcvZ/9PSKFyjUwj5igcq+gnsmAZAXvuAth4UGgt92bhmY?=
 =?us-ascii?Q?TYSbaP1zI/63YC7oASB9ACSydbktYxhMBolCA/oDi/S4Z8mp0wxg3mouC43H?=
 =?us-ascii?Q?bguuUNFszZTwg9/Evkddzr5a4moZemvaQZbbIsZcCpj0iSrlao0dDr5ilRY3?=
 =?us-ascii?Q?U7W5RJVgpe/I7tlBaeuG5Hgc+w1Vyd64uCjmuSJzQaVqUFtt0R5EdjDUiPjj?=
 =?us-ascii?Q?FB0DlTfkiUi1yFNbq44a+YRMer0CsyKtc3Dk3mxxuu0JsHsbHNA4mvV823gC?=
 =?us-ascii?Q?tjf/hi09OQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GFOL06LYcalu1m4nAYttsnWCnGBkUzi7fq4W7wRYsmAHmxIm2Tyy7g/yaqy10YrJy1IDSEWI21WTNaC6cwZD4/2+mujYQdMbxRHgxw3arGN5qUTswNnSGkXDUDkFQlsowKkyXNvEDIvDzmXl72oiP9rJwZW93w2FUndYoyxy0LenFZZ675/69wXyc83hp4Wu7O96Ki99Rfs8Cp6C13WSk5hjeXex5lhwqMjbbeK0lfbWzuVcDZSOnE02hNbnawivVAdnhCUH1VHKBL2Qb6Rq5w6rcSQgrmgvawc/VUKqymc/AsIU7tMpfkC9l6DOHJ5alVE1rrQiYPhFyFnLzdpT8Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5efc9ae2-cd1a-4b2f-913a-08de951b512e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 03:02:49.1558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XNa8ZiVnFqdxv1COCp7/d9PXOOiLTVPEd/+UataYtBlprC0OYyHbtNQXcLVvShzZdqHw78uzUgfXaCxVaWnfEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9672
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A30CA3B6731
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame
> capture function
>=20
> On Wed, 25 Mar 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Define the commit function to be called at atomic_commit_tail if
> > drm_writeback_job is available. This function calls the capture
> > function and queues the job to be called later via interrupt handler
> > when the job is complete.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  3 +
> >  .../gpu/drm/i915/display/intel_writeback.c    | 58 +++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_writeback.h    |  4 ++
> >  3 files changed, 65 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index d433ffaadd65..4cc3e0779e8a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -126,6 +126,7 @@
> >  #include "intel_vga.h"
> >  #include "intel_vrr.h"
> >  #include "intel_wm.h"
> > +#include "intel_writeback.h"
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >  #include "skl_watermark.h"
> > @@ -7564,6 +7565,8 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
> >  	/* FIXME probably need to sequence this properly */
> >  	intel_program_dpkgc_latency(state);
> >
> > +	intel_writeback_atomic_commit(state);
> > +
> >  	intel_wait_for_vblank_workers(state);
> >
> >  	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > index d45d5faaf7cc..c79e7330b81c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -51,6 +51,12 @@ static const u32 writeback_formats[] =3D {
> >  	DRM_FORMAT_XBGR2101010,
> >  };
> >
> > +static struct intel_writeback_connector
> > +*conn_to_intel_writeback_connector(struct intel_connector *connector)
> > +{
> > +	return container_of(connector, struct intel_writeback_connector,
> > +connector); }
> > +
> >  static struct intel_writeback_connector
> > *enc_to_intel_writeback_connector(struct intel_encoder *encoder)  { @@
> > -224,6 +230,58 @@ static int intel_writeback_atomic_check(struct
> drm_connector *connector,
> >  	return 0;
> >  }
> >
> > +static void intel_writeback_capture(struct intel_atomic_state *state,
> > +				    struct intel_connector *connector) {
> > +	struct intel_display *display =3D to_intel_display(connector);
> > +	struct intel_writeback_connector *wb_conn =3D
> > +		conn_to_intel_writeback_connector(connector);
> > +	enum transcoder trans =3D wb_conn->trans;
> > +	u32 val =3D 0;
> > +
> > +	val |=3D START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn-
> >frame_num);
> > +	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
> > +		     START_TRIGGER_FRAME | WD_FRAME_NUMBER_MASK,
> > +		     val);
> > +
> > +	if (intel_de_wait_for_set_ms(display, WD_FRAME_STATUS(trans),
> > +				     WD_FRAME_COMPLETE, 50)) {
> > +		drm_dbg_kms(display->drm,
> > +			    "Frame was not captured after triggering a
> capture\n");
> > +		intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
> > +			     STOP_TRIGGER_FRAME,
> > +			     STOP_TRIGGER_FRAME);
> > +	} else {
> > +		drm_writeback_signal_completion(&connector->base, 0);
> > +		intel_de_write(display, WD_FRAME_STATUS(trans),
> WD_FRAME_COMPLETE);
> > +		wb_conn->frame_num++;
> > +		if (wb_conn->frame_num > 7)
> > +			wb_conn->frame_num =3D 1;
> > +		wb_conn->job =3D NULL;
> > +	}
> > +}
> > +
> > +void intel_writeback_atomic_commit(struct intel_atomic_state *state)
> > +{
> > +	struct drm_connector *connector;
> > +	struct drm_connector_state *conn_state;
> > +	int i;
> > +
> > +	for_each_new_connector_in_state(&state->base, connector,
> conn_state, i) {
> > +		struct intel_connector *intel_connector =3D
> > +to_intel_connector(connector);
> > +
> > +		if (!conn_state)
> > +			return;
> > +
> > +		if (conn_state->writeback_job && conn_state->writeback_job-
> >fb) {
> > +			WARN_ON(connector->connector_type !=3D
> > +DRM_MODE_CONNECTOR_WRITEBACK);
> > +
> > +			drm_writeback_queue_job(connector, conn_state);
> > +			intel_writeback_capture(state, intel_connector);
> > +		}
> > +	}
> > +}
> > +
> >  static void intel_writeback_enable_encoder(struct intel_atomic_state *=
state,
> >  					   struct intel_encoder *encoder,
> >  					   const struct intel_crtc_state
> *crtc_state, diff --git
> > a/drivers/gpu/drm/i915/display/intel_writeback.h
> > b/drivers/gpu/drm/i915/display/intel_writeback.h
> > index 5911684cb81a..3c145cf73e20 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.h
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> > @@ -8,10 +8,14 @@
> >
> >  #include <linux/types.h>
>=20
> You don't actually need anything from here.

Right will fix

>=20
> >
> > +#include "intel_display_types.h"
> > +
>=20
> Forward declaration is enough.

Got it.

Regards,
Suraj Kandpal

>=20
> > +struct intel_atomic_state;
> >  struct intel_display;
> >  struct intel_writeback_connector;
> >
> >  int intel_writeback_init(struct intel_display *display);
> > +void intel_writeback_atomic_commit(struct intel_atomic_state *state);
> >
> >  #endif /* __INTEL_WRITEBACK_H__ */
>=20
> --
> Jani Nikula, Intel
