Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86903A48DFF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 02:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD5110EBE0;
	Fri, 28 Feb 2025 01:31:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jobpRvRv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E5810EBCE;
 Fri, 28 Feb 2025 01:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740706268; x=1772242268;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VaPQpTIGWIQN4ryY5H5pn5sSWT8jzllWa30UvDsDqTw=;
 b=jobpRvRvU9gsbxb9+YRHT/2EGkP0z2dB1OILOjgC63NfppGfluZ63+sm
 4n7YuKFMhal2nQHOB8TriJgE1i9nT71iyqGEYGsKoMOIzyc61SjESUycD
 o8lbrovRaiG9O7ncrGyQ3nWEAV1Ygop/IJPRHBgKZUe8A4lZ0MwMsdLhN
 ZpfyBOyzXqoHQVIT98tnY3HgqbBQW1uCnFtX0L8Ae7OCrdi8ZsFTHKi8Q
 D7Dywjfgqff7M9zez2vAbmreyvt4eo9oOl86e/8xHn1raaysWylTSVh+c
 cWr8IshoG8hmdK+4C08+tLB51E9QjWZ7wv+pKjodL3IVphk45auSRCcrU A==;
X-CSE-ConnectionGUID: n+f3zbvFQWqTDgdY7dyQ6A==
X-CSE-MsgGUID: Ev4j5qg+ReayuYf1kJlwRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41507539"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="41507539"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 17:31:06 -0800
X-CSE-ConnectionGUID: fr2SVyJYQvKg1nzL7s7YqA==
X-CSE-MsgGUID: lOmk/7upREab5fvq7SGgXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="117181220"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 17:31:00 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 27 Feb 2025 17:30:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Feb 2025 17:30:59 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 17:30:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DvLToxil0OPcAOi5uuJOOhSWuQga7GmXiqc490+njP73XXFbbL41lF3LHBi9lU5pO6YD5NpOSqcd1HxILrwSmiGU0BuU1XJn8p8rhPqaN8E7XjAgYYHOyMjRq3Vy7PXGr0WobPZeG4K8ynnmy0aUfowStmI6I6yVIDshixKb7LnvAxgNCnPY1At9XkdyTHqPtK2StoEzXRLo8T9rvAy2M+e9BiATfF0wZl2nlS7D5nZHiXea4gX6FeT2fqi8kJdZZdk7aUHaZ0zdMUSfMyPwP/IHAIiJXeTHgQ2zcG6SUX93JVrapGq391ZWK31i8oQK5+MlvkQenWp2FD+XFS2iaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y/07htcohQGYIKoLBbisvYx+7M0jQQG5dfdC1w+nMak=;
 b=nM2Txg9W0W3TXZlvDCIlY8p5zDMlpmhc7FVrZYO2+wU3fLGrp1BhoXmSaEYR8xnPidrnI+hbmSj/Hw85O4v8t+ZHrzIa5qjJ4eXCFMOU2MUiqEUHxnczGBhNpy0+/DJa2brEOPDch1pQHFENW1UcbCODHZ3AnQgDaE6tYC7CHHW5dOQj7yBh5QAvNqRMGR24EiWfbPug6qF4X7sgMeWSDAbtlsNDL/fEsNQvglm5J29kJOSEsE6kSs21XVo1VyTMW29APa0Dk5V6OQcBctsssEe+2M8sDiJqkGv0CyjRGO2fVghKQrsGhhRY0O92ceweQK0iQnijgqAxxHYuhTVrng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.23; Fri, 28 Feb
 2025 01:30:27 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%4]) with mapi id 15.20.8466.016; Fri, 28 Feb 2025
 01:30:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/vdsc: intel_display conversions
Thread-Topic: [PATCH] drm/i915/vdsc: intel_display conversions
Thread-Index: AQHbiQn1OhpvjtXdgE2Zdvo1N9HlMbNbEPqAgAA9YlCAAC/EgIAAcFjA
Date: Fri, 28 Feb 2025 01:30:27 +0000
Message-ID: <MW4PR11MB6761CFE2569AF599CA3EF80FE3CC2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20250227112240.278827-1-suraj.kandpal@intel.com>
 <87o6yn37lk.fsf@intel.com>
 <SN7PR11MB6750ADE79EE5378C1745D6FBE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87ikov2pig.fsf@intel.com>
In-Reply-To: <87ikov2pig.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|DM4PR11MB5279:EE_
x-ms-office365-filtering-correlation-id: 4be941da-0e85-4923-30f7-08dd57977b44
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kvZ33FI6b0E6al8WxxnelLJVODuT/dDTldzEEZK81jLdu5uOyd5CGzFGALhA?=
 =?us-ascii?Q?on24kQPmm6a6tyDxqcgqIt/pWi1LzRUW5SzGF1Yw2wukcnPXrvFHY3idp0FR?=
 =?us-ascii?Q?xsadZbjfTd5eX8DLtUjWxAazOFFyjPt9V8PN+s3Zp6P6F1ncoTQAv7t7tUbx?=
 =?us-ascii?Q?BRAOvNEC8LWuv0R5LjXWO82l5lN0galjHKbsvrw9424r6/VioQ9XQNuKY3vq?=
 =?us-ascii?Q?ebBszNg1+YPl/Mjxmlv72qwOGbwgv0JT5Xtu4JJ4JJftHKhFNdTu81iSYNPp?=
 =?us-ascii?Q?SO7e5sRSSGSwo4L+frzKzdIK0mPjQ7omtMvQoCn7hUWDYYg8SYyw5mEogqh+?=
 =?us-ascii?Q?DdKNxmENspWWNgJfWb+nPyCwa8NSvYrfsyjLnrjclcON2W6tC4KcYeTitWj8?=
 =?us-ascii?Q?qr1hHTVWrMIwTr05JRHiOj39xsBo8Tle5H6Gp/dNqQ7+ECutY10S50xZCj1Q?=
 =?us-ascii?Q?ye0D14M4egTTgpEuPwu7Hfc27w/l6G6HKTd81839B4fttXGC/A9SWM7kDSs6?=
 =?us-ascii?Q?x8XHOCDppFK+iG6MA9g3GSlpEkFR27gSf0vjPe+1m3jrpb5SKGOT69TFrnAb?=
 =?us-ascii?Q?PZ4A+q15bUZF4TMMQdwR7vLJaZeNQ7K1gmlWHO8Hg7IhHe1I0MRZKPQLvXBu?=
 =?us-ascii?Q?zfVIhvliWKPdnRTSNdw8kKCln/GgQoFgcpvF7UwcfK3ca9OveQz7M51i7fPe?=
 =?us-ascii?Q?zkfs0Faop0k3ApE2hL/eDuSePAeoYAZSUmOQktu5sWRH8aZyvZODwMgvC+7E?=
 =?us-ascii?Q?2arejYsFbvyyNQju4PDKKoHYPpxBl/gBIAad+BSO/UJMOwdQ8QNdFyyIteem?=
 =?us-ascii?Q?EpcES3/O0uhvPJdENEvvtrgwSJ2K6vp9jbQVg9s4MDK8T7i7hlGYbwVyKtiV?=
 =?us-ascii?Q?UyV3uQnpXazAhHmlKAADhrWDg+KSEwB5bFuE8eFAPZA2mu4EpPvLJl5oKn+u?=
 =?us-ascii?Q?7CYcVainWHfA7oESIE678nfxcPtli7qC6Vz2KRONcEoSD0Xhzdekr+4xF9JI?=
 =?us-ascii?Q?D7qSfRDG8SZjZLTMgk9K1ymnKQaPfA+h4fASM9pj5dOMMI/fVOTA+pIUnPX9?=
 =?us-ascii?Q?PTNalDFyLYyaOoRTHKKXkKYtBuHjpZsPSj1e916wbABkJ7y8SstJOsPCOl/A?=
 =?us-ascii?Q?9gO2ZEExd++ZcKl1d401G0bKBo47CVf2w58yLAL5W4POjj4GB5rdycopXDfm?=
 =?us-ascii?Q?cYydSGLFvdVoQ01/d3GlAX9NlACJvB3yyYDDXX6yb4MWEshh8p0Fn4qkH4Ol?=
 =?us-ascii?Q?2/m0IFeYssmcuCmQotGHhsBSjJ1xqEfsclGBf674cUiR9C246PX78L/jaGS8?=
 =?us-ascii?Q?8t4+/n2XbjkVxkxwaTGXZOEo+ohu9ZWe2AZPbn6JYa24i4ca+0YcuPi4BUYv?=
 =?us-ascii?Q?Ey2l3s1BfkpbutPGusu1KQLrm3t/JfaHw/ePBQ9u36ZmExJckJtS5I1eZwvX?=
 =?us-ascii?Q?QYbKxf8ShhY37Bu9HIYYDyPeGb1DzFZf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kyh8EIpjzBh5h3tBa/PamLK6eByDdrfUUeeoqMtQsjsH0ZN0g2+fhm+mtEtt?=
 =?us-ascii?Q?GADafdP8b/OtKZPDoJlIVYBStu8yBarhA12+0tUILjmItpGPfsETplRG4ilN?=
 =?us-ascii?Q?sVlF+oohngAzARCR0CwblBGChRhDWf9P1RFXthDIXZ4J8a98WUsfo3lg7jnb?=
 =?us-ascii?Q?nDIEwqAesiqLmBALbuInNy/YexOP0XQeVGsQ7bPavuVagYuy36WOVZBkkfW/?=
 =?us-ascii?Q?8kdHPRPE07YRXGRv4NXy8MawjQsBed9ECXqN0oPibpOJ10jPMfpZX9FYN3yc?=
 =?us-ascii?Q?/wBXg+rQlb4ePuu34UhpipnfI5HAXItXaG6VOleHVT224dJxaW1lxMZLSPzA?=
 =?us-ascii?Q?CYuaXjaeeIoxZQbaDtP3ucLbCGye5JLd6Q4YNrEZ2nUwWJgj9I6lE4U5ICzy?=
 =?us-ascii?Q?hDaJ/XgkJWoQ1pGNI/er99THHfkQleWh+9ef22CKGBJ2JTbVzPhz1eaeZbK8?=
 =?us-ascii?Q?LvO03p0v/kOyVqxkwBA9zIOPXxzuJzHE/RB5GO0M7y+hDoMD58anogHqEEsO?=
 =?us-ascii?Q?jy9CVGdawWrbw/OJcSiM/zwV6YcuiFGMNtSUwTprjnImkYgtnVKVj744b9dN?=
 =?us-ascii?Q?c3fPzlOIct163ab7XVQ14ubAp6FA5Cq2huANrJ1UQhtQ4V6llExmZumEaNLs?=
 =?us-ascii?Q?YQDdPFi8DL2RJpRhbBcAvSwlxuBrWpQ8zO1GeKfe6DtG+OP7flCMzedGi70G?=
 =?us-ascii?Q?r40Lqgl5a55pVfR7Y953apYNCw5wmlpJBqX2ur259BKixqFoex2GHd+DUEX9?=
 =?us-ascii?Q?sJHOTWO+WXFE3YHKzUH+Gn6XoNWadA7T2tbGdnzUS5EQBKLSrSA8QWcEx/+m?=
 =?us-ascii?Q?HF01KilT+i8Y2RwGnapAcnCYP7sv7SJXIL0HQu+HGZ3zHYfUzVJhHcsIoRua?=
 =?us-ascii?Q?kbFSdXN/yfd7a7yxF125DFgOtW5AHL65iSudVQWdrkb4WkCpfe20Tl8tJcbt?=
 =?us-ascii?Q?iGh8NLtMEH2HN4VK4TJ7ehBK5L6QVGY+8eedDQvgHK7w0cWMDYkrdU5Q5Rg0?=
 =?us-ascii?Q?hHwitsyG74ecQPQVK5CHJ9PoQ+2jb8NxQeyGTmAnvDnPwsEksy9iYxtVYzfI?=
 =?us-ascii?Q?EldxtJG9TK8bhewoO6tLlnVnp9Pu/LrPt/E51+w0k3QjVNzbThSvLjLKKWkI?=
 =?us-ascii?Q?r6Ub/vHivC4femB0pSj+xzkHuXnawIske6uOqyf0/JtcIJSUE7Z8iaXcV/SI?=
 =?us-ascii?Q?SV4zZZ/u1SYEhZlpvGx0QNOFWkEZhZ1YtSl9eKlEJbaWv6He4HyEMQCdQKkl?=
 =?us-ascii?Q?KKEveyppQ66hDfk5y1xsbuvTFgdJtnu0jHBSQWtUf52s/HSOJPP2bXNRekke?=
 =?us-ascii?Q?Bhv+JsTPBLy0WxOejqf8VHbSfBnSUFq4voBEm1aOkjrQmzlMtCmVH6eEDBG1?=
 =?us-ascii?Q?4qlj4StyZ+KVmtiohix6q6fpQLsjpTZlHMJ63XMdOAhrD6NW/YgPJ9F4Ipbi?=
 =?us-ascii?Q?P8u0sCX4tOSYApUSrh2k28jET1tTO8xWI8WYkDZhdTZMWx4JaIvcCPHkI5KT?=
 =?us-ascii?Q?y/5GHeNrRncmdd9P/x2pXHa/ycd5mtK4enHJGs6ZjOwbwNLsyyDdODQp+0q5?=
 =?us-ascii?Q?eUUjRRClGM5jtG2xv+1IGZgGY7H6pNcjOgLQCMLI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4be941da-0e85-4923-30f7-08dd57977b44
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 01:30:27.4966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z3qs/KicNQkHZ0jtQzWNCAZYn/Ceb9IfK1xhk+oAGkwgQLiEp1IJ+Q8qma0ACl0Gj15DzaFsuYg1Y3odLQ5cMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, February 28, 2025 12:18 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/vdsc: intel_display conversions
>=20
> On Thu, 27 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Thursday, February 27, 2025 5:47 PM
> >> To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> >> intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> >> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> >> Subject: Re: [PATCH] drm/i915/vdsc: intel_display conversions
> >>
> >> On Thu, 27 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> > intel_display conversions for vdsc in an effort to move away from
> >> > drm_i915_private.
> >> > While at it use display->platform.xx.
> >>
> >> Please update with
> >>
> >> -#include "i915_drv.h"
> >> +#include "i915_utils.h"
> >>
> >> and you get
> >>
> >> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> >
> > Thanks for the reviews pushed to drm-intel-next with the above
> > mentioned changes
>=20
> I didn't really mean you should make the changes while applying.

Ahh ohkay will keep that in mind in the future

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
>=20
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> >>
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >>
> >> >
> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 180
> >> > +++++++++++-----------
> >> >  1 file changed, 87 insertions(+), 93 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > index 6e7151346382..35d558ca98db 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > @@ -22,14 +22,13 @@
> >> >
> >> >  bool intel_dsc_source_support(const struct intel_crtc_state
> >> > *crtc_state)  {
> >> > -   const struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi=
.crtc);
> >> > -   struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >> >
> >> > -   if (!HAS_DSC(i915))
> >> > +   if (!HAS_DSC(display))
> >> >             return false;
> >> >
> >> > -   if (DISPLAY_VER(i915) =3D=3D 11 && cpu_transcoder =3D=3D TRANSCO=
DER_A)
> >> > +   if (DISPLAY_VER(display) =3D=3D 11 && cpu_transcoder =3D=3D
> >> > + TRANSCODER_A)
> >> >             return false;
> >> >
> >> >     return true;
> >> > @@ -37,9 +36,9 @@ bool intel_dsc_source_support(const struct
> >> > intel_crtc_state *crtc_state)
> >> >
> >> >  static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder
> >> > cpu_transcoder)  {
> >> > -   struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> > +   struct intel_display *display =3D to_intel_display(crtc);
> >> >
> >> > -   if (DISPLAY_VER(i915) >=3D 12)
> >> > +   if (DISPLAY_VER(display) >=3D 12)
> >> >             return true;
> >> >
> >> >     if (cpu_transcoder =3D=3D TRANSCODER_EDP || @@ -48,7 +47,7 @@
> >> > static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder
> cpu_transcoder)
> >> >             return false;
> >> >
> >> >     /* There's no pipe A DSC engine on ICL */
> >> > -   drm_WARN_ON(&i915->drm, crtc->pipe =3D=3D PIPE_A);
> >> > +   drm_WARN_ON(display->drm, crtc->pipe =3D=3D PIPE_A);
> >> >
> >> >     return true;
> >> >  }
> >> > @@ -262,8 +261,7 @@ static int
> >> > intel_dsc_slice_dimensions_valid(struct
> >> > intel_crtc_state *pipe_config
> >> >
> >> >  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config) =
 {
> >> > -   struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc=
);
> >> > -   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >> > +   struct intel_display *display =3D to_intel_display(pipe_config);
> >> >     struct drm_dsc_config *vdsc_cfg =3D &pipe_config->dsc.config;
> >> >     u16 compressed_bpp =3D fxp_q4_to_int(pipe_config-
> >> >dsc.compressed_bpp_x16);
> >> >     int err;
> >> > @@ -276,7 +274,7 @@ int intel_dsc_compute_params(struct
> >> >intel_crtc_state
> >> *pipe_config)
> >> >     err =3D intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
> >> >
> >> >     if (err) {
> >> > -           drm_dbg_kms(&dev_priv->drm, "Slice dimension
> >> requirements not met\n");
> >> > +           drm_dbg_kms(display->drm, "Slice dimension requirements
> >> not
> >> > +met\n");
> >> >             return err;
> >> >     }
> >> >
> >> > @@ -287,7 +285,7 @@ int intel_dsc_compute_params(struct
> >> > intel_crtc_state
> >> *pipe_config)
> >> >     vdsc_cfg->convert_rgb =3D pipe_config->output_format !=3D
> >> INTEL_OUTPUT_FORMAT_YCBCR420 &&
> >> >                             pipe_config->output_format !=3D
> >> INTEL_OUTPUT_FORMAT_YCBCR444;
> >> >
> >> > -   if (DISPLAY_VER(dev_priv) >=3D 14 &&
> >> > +   if (DISPLAY_VER(display) >=3D 14 &&
> >> >         pipe_config->output_format =3D=3D
> >> INTEL_OUTPUT_FORMAT_YCBCR420)
> >> >             vdsc_cfg->native_420 =3D true;
> >> >     /* We do not support YcBCr422 as of now */ @@ -308,7 +306,7 @@
> >> > int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
> >> >     vdsc_cfg->bits_per_component =3D pipe_config->pipe_bpp / 3;
> >> >
> >> >     if (vdsc_cfg->bits_per_component < 8) {
> >> > -           drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not
> >> met bpc: %d\n",
> >> > +           drm_dbg_kms(display->drm, "DSC bpc requirements not met
> >> bpc: %d\n",
> >> >                         vdsc_cfg->bits_per_component);
> >> >             return -EINVAL;
> >> >     }
> >> > @@ -320,7 +318,7 @@ int intel_dsc_compute_params(struct
> >> > intel_crtc_state
> >> *pipe_config)
> >> >      * upto uncompressed bpp-1, hence add calculations for all the r=
c
> >> >      * parameters
> >> >      */
> >> > -   if (DISPLAY_VER(dev_priv) >=3D 13) {
> >> > +   if (DISPLAY_VER(display) >=3D 13) {
> >> >             calculate_rc_params(vdsc_cfg);
> >> >     } else {
> >> >             if ((compressed_bpp =3D=3D 8 || @@ -356,7 +354,7 @@ int
> >> > intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
> >> > enum intel_display_power_domain intel_dsc_power_domain(struct
> >> > intel_crtc *crtc, enum transcoder
> >> > cpu_transcoder)  {
> >> > -   struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> > +   struct intel_display *display =3D to_intel_display(crtc);
> >> >     enum pipe pipe =3D crtc->pipe;
> >> >
> >> >     /*
> >> > @@ -370,7 +368,8 @@ intel_dsc_power_domain(struct intel_crtc *crtc,
> >> enum transcoder cpu_transcoder)
> >> >      * the pipe in use. Hence another reference on the pipe power do=
main
> >> >      * will suffice. (Except no VDSC/joining on ICL pipe A.)
> >> >      */
> >> > -   if (DISPLAY_VER(i915) =3D=3D 12 && !IS_ROCKETLAKE(i915) && pipe =
=3D=3D
> >> PIPE_A)
> >> > +   if (DISPLAY_VER(display) =3D=3D 12 && !display->platform.rocketl=
ake &&
> >> > +       pipe =3D=3D PIPE_A)
> >> >             return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> >> >     else if (is_pipe_dsc(crtc, cpu_transcoder))
> >> >             return POWER_DOMAIN_PIPE(pipe); @@ -416,26 +415,25 @@
> >> > static void intel_dsc_get_pps_reg(const struct intel_crtc_state
> >> > *crtc_state, int  static void intel_dsc_pps_write(const struct
> >> intel_crtc_state *crtc_state,
> >> >                             int pps, u32 pps_val)  {
> >> > -   struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     i915_reg_t dsc_reg[3];
> >> >     int i, vdsc_per_pipe, dsc_reg_num;
> >> >
> >> >     vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> >> >     dsc_reg_num =3D min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
> >> >
> >> > -   drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
> >> > +   drm_WARN_ON_ONCE(display->drm, dsc_reg_num < vdsc_per_pipe);
> >> >
> >> >     intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
> >> >
> >> >     for (i =3D 0; i < dsc_reg_num; i++)
> >> > -           intel_de_write(i915, dsc_reg[i], pps_val);
> >> > +           intel_de_write(display, dsc_reg[i], pps_val);
> >> >  }
> >> >
> >> >  static void intel_dsc_pps_configure(const struct intel_crtc_state
> >> > *crtc_state)  {
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >> >     const struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.confi=
g;
> >> >     enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >> >     enum pipe pipe =3D crtc->pipe;
> >> > @@ -529,7 +527,7 @@ static void intel_dsc_pps_configure(const
> >> > struct
> >> intel_crtc_state *crtc_state)
> >> >                                           vdsc_cfg->slice_height);
> >> >     intel_dsc_pps_write(crtc_state, 16, pps_val);
> >> >
> >> > -   if (DISPLAY_VER(dev_priv) >=3D 14) {
> >> > +   if (DISPLAY_VER(display) >=3D 14) {
> >> >             /* PPS 17 */
> >> >             pps_val =3D DSC_PPS17_SL_BPG_OFFSET(vdsc_cfg-
> >> >second_line_bpg_offset);
> >> >             intel_dsc_pps_write(crtc_state, 17, pps_val); @@
> >> >-547,44
> >> +545,44 @@
> >> > static void intel_dsc_pps_configure(const struct intel_crtc_state
> *crtc_state)
> >> >                     (u32)(vdsc_cfg->rc_buf_thresh[i] <<
> >> >                           BITS_PER_BYTE * (i % 4));
> >> >     if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> >> > -           intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
> >> > +           intel_de_write(display, DSCA_RC_BUF_THRESH_0,
> >> >                            rc_buf_thresh_dword[0]);
> >> > -           intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0_UDW,
> >> > +           intel_de_write(display, DSCA_RC_BUF_THRESH_0_UDW,
> >> >                            rc_buf_thresh_dword[1]);
> >> > -           intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1,
> >> > +           intel_de_write(display, DSCA_RC_BUF_THRESH_1,
> >> >                            rc_buf_thresh_dword[2]);
> >> > -           intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1_UDW,
> >> > +           intel_de_write(display, DSCA_RC_BUF_THRESH_1_UDW,
> >> >                            rc_buf_thresh_dword[3]);
> >> >             if (vdsc_instances_per_pipe > 1) {
> >> > -                   intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0,
> >> > +                   intel_de_write(display, DSCC_RC_BUF_THRESH_0,
> >> >                                    rc_buf_thresh_dword[0]);
> >> > -                   intel_de_write(dev_priv,
> >> DSCC_RC_BUF_THRESH_0_UDW,
> >> > +                   intel_de_write(display,
> >> DSCC_RC_BUF_THRESH_0_UDW,
> >> >                                    rc_buf_thresh_dword[1]);
> >> > -                   intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_1,
> >> > +                   intel_de_write(display, DSCC_RC_BUF_THRESH_1,
> >> >                                    rc_buf_thresh_dword[2]);
> >> > -                   intel_de_write(dev_priv,
> >> DSCC_RC_BUF_THRESH_1_UDW,
> >> > +                   intel_de_write(display,
> >> DSCC_RC_BUF_THRESH_1_UDW,
> >> >                                    rc_buf_thresh_dword[3]);
> >> >             }
> >> >     } else {
> >> > -           intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_0(pipe),
> >> > +           intel_de_write(display, ICL_DSC0_RC_BUF_THRESH_0(pipe),
> >> >                            rc_buf_thresh_dword[0]);
> >> > -           intel_de_write(dev_priv,
> >> ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
> >> > +           intel_de_write(display,
> >> ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
> >> >                            rc_buf_thresh_dword[1]);
> >> > -           intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_1(pipe),
> >> > +           intel_de_write(display, ICL_DSC0_RC_BUF_THRESH_1(pipe),
> >> >                            rc_buf_thresh_dword[2]);
> >> > -           intel_de_write(dev_priv,
> >> ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
> >> > +           intel_de_write(display,
> >> ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
> >> >                            rc_buf_thresh_dword[3]);
> >> >             if (vdsc_instances_per_pipe > 1) {
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >                                    ICL_DSC1_RC_BUF_THRESH_0(pipe),
> >> >                                    rc_buf_thresh_dword[0]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >                                    ICL_DSC1_RC_BUF_THRESH_0_UDW(pipe=
),
> >> >                                    rc_buf_thresh_dword[1]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >                                    ICL_DSC1_RC_BUF_THRESH_1(pipe),
> >> >                                    rc_buf_thresh_dword[2]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >                                    ICL_DSC1_RC_BUF_THRESH_1_UDW(pipe=
),
> >> >                                    rc_buf_thresh_dword[3]);
> >> >             }
> >> > @@ -601,88 +599,88 @@ static void intel_dsc_pps_configure(const
> >> > struct
> >> intel_crtc_state *crtc_state)
> >> >                            (vdsc_cfg->rc_range_params[i].range_min_q=
p <<
> >> >                             RC_MIN_QP_SHIFT)) << 16 * (i % 2));
> >> >     if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> >> > -           intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
> >> > +           intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_0,
> >> >                            rc_range_params_dword[0]);
> >> > -           intel_de_write(dev_priv,
> >> DSCA_RC_RANGE_PARAMETERS_0_UDW,
> >> > +           intel_de_write(display,
> >> DSCA_RC_RANGE_PARAMETERS_0_UDW,
> >> >                            rc_range_params_dword[1]);
> >> > -           intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_1,
> >> > +           intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_1,
> >> >                            rc_range_params_dword[2]);
> >> > -           intel_de_write(dev_priv,
> >> DSCA_RC_RANGE_PARAMETERS_1_UDW,
> >> > +           intel_de_write(display,
> >> DSCA_RC_RANGE_PARAMETERS_1_UDW,
> >> >                            rc_range_params_dword[3]);
> >> > -           intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_2,
> >> > +           intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_2,
> >> >                            rc_range_params_dword[4]);
> >> > -           intel_de_write(dev_priv,
> >> DSCA_RC_RANGE_PARAMETERS_2_UDW,
> >> > +           intel_de_write(display,
> >> DSCA_RC_RANGE_PARAMETERS_2_UDW,
> >> >                            rc_range_params_dword[5]);
> >> > -           intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_3,
> >> > +           intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_3,
> >> >                            rc_range_params_dword[6]);
> >> > -           intel_de_write(dev_priv,
> >> DSCA_RC_RANGE_PARAMETERS_3_UDW,
> >> > +           intel_de_write(display,
> >> DSCA_RC_RANGE_PARAMETERS_3_UDW,
> >> >                            rc_range_params_dword[7]);
> >> >             if (vdsc_instances_per_pipe > 1) {
> >> > -                   intel_de_write(dev_priv,
> >> DSCC_RC_RANGE_PARAMETERS_0,
> >> > +                   intel_de_write(display,
> >> DSCC_RC_RANGE_PARAMETERS_0,
> >> >                                    rc_range_params_dword[0]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >                                    DSCC_RC_RANGE_PARAMETERS_0_UDW,
> >> >                                    rc_range_params_dword[1]);
> >> > -                   intel_de_write(dev_priv,
> >> DSCC_RC_RANGE_PARAMETERS_1,
> >> > +                   intel_de_write(display,
> >> DSCC_RC_RANGE_PARAMETERS_1,
> >> >                                    rc_range_params_dword[2]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >                                    DSCC_RC_RANGE_PARAMETERS_1_UDW,
> >> >                                    rc_range_params_dword[3]);
> >> > -                   intel_de_write(dev_priv,
> >> DSCC_RC_RANGE_PARAMETERS_2,
> >> > +                   intel_de_write(display,
> >> DSCC_RC_RANGE_PARAMETERS_2,
> >> >                                    rc_range_params_dword[4]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >                                    DSCC_RC_RANGE_PARAMETERS_2_UDW,
> >> >                                    rc_range_params_dword[5]);
> >> > -                   intel_de_write(dev_priv,
> >> DSCC_RC_RANGE_PARAMETERS_3,
> >> > +                   intel_de_write(display,
> >> DSCC_RC_RANGE_PARAMETERS_3,
> >> >                                    rc_range_params_dword[6]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >                                    DSCC_RC_RANGE_PARAMETERS_3_UDW,
> >> >                                    rc_range_params_dword[7]);
> >> >             }
> >> >     } else {
> >> > -           intel_de_write(dev_priv,
> >> ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
> >> > +           intel_de_write(display,
> >> ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
> >> >                            rc_range_params_dword[0]);
> >> > -           intel_de_write(dev_priv,
> >> > +           intel_de_write(display,
> >> >
> >> ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe),
> >> >                            rc_range_params_dword[1]);
> >> > -           intel_de_write(dev_priv,
> >> ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
> >> > +           intel_de_write(display,
> >> ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
> >> >                            rc_range_params_dword[2]);
> >> > -           intel_de_write(dev_priv,
> >> > +           intel_de_write(display,
> >> >
> >> ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe),
> >> >                            rc_range_params_dword[3]);
> >> > -           intel_de_write(dev_priv,
> >> ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
> >> > +           intel_de_write(display,
> >> ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
> >> >                            rc_range_params_dword[4]);
> >> > -           intel_de_write(dev_priv,
> >> > +           intel_de_write(display,
> >> >
> >> ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe),
> >> >                            rc_range_params_dword[5]);
> >> > -           intel_de_write(dev_priv,
> >> ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
> >> > +           intel_de_write(display,
> >> ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
> >> >                            rc_range_params_dword[6]);
> >> > -           intel_de_write(dev_priv,
> >> > +           intel_de_write(display,
> >> >
> >> ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
> >> >                            rc_range_params_dword[7]);
> >> >             if (vdsc_instances_per_pipe > 1) {
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >
> >> ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
> >> >                                    rc_range_params_dword[0]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >
> >> ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe),
> >> >                                    rc_range_params_dword[1]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >
> >> ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe),
> >> >                                    rc_range_params_dword[2]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >
> >> ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe),
> >> >                                    rc_range_params_dword[3]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >
> >> ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe),
> >> >                                    rc_range_params_dword[4]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >
> >> ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe),
> >> >                                    rc_range_params_dword[5]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >
> >> ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe),
> >> >                                    rc_range_params_dword[6]);
> >> > -                   intel_de_write(dev_priv,
> >> > +                   intel_de_write(display,
> >> >
> >> ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe),
> >> >                                    rc_range_params_dword[7]);
> >> >             }
> >> > @@ -746,8 +744,8 @@ static i915_reg_t dss_ctl2_reg(struct
> >> > intel_crtc *crtc, enum transcoder cpu_tran
> >> >
> >> >  void intel_uncompressed_joiner_enable(const struct
> >> > intel_crtc_state
> >> > *crtc_state)  {
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >> >     u32 dss_ctl1_val =3D 0;
> >> >
> >> >     if (crtc_state->joiner_pipes &&
> >> > !crtc_state->dsc.compression_enable)
> >> > { @@ -756,14 +754,15 @@ void intel_uncompressed_joiner_enable(const
> >> struct intel_crtc_state *crtc_state)
> >> >             else
> >> >                     dss_ctl1_val |=3D UNCOMPRESSED_JOINER_PRIMARY;
> >> >
> >> > -           intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state-
> >> >cpu_transcoder), dss_ctl1_val);
> >> > +           intel_de_write(display, dss_ctl1_reg(crtc, crtc_state-
> >> >cpu_transcoder),
> >> > +                          dss_ctl1_val);
> >> >     }
> >> >  }
> >> >
> >> >  void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
> >> > {
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >> >     u32 dss_ctl1_val =3D 0;
> >> >     u32 dss_ctl2_val =3D 0;
> >> >     int vdsc_instances_per_pipe =3D
> >> > intel_dsc_get_vdsc_per_pipe(crtc_state);
> >> > @@ -796,28 +795,27 @@ void intel_dsc_enable(const struct
> >> > intel_crtc_state
> >> *crtc_state)
> >> >             if (intel_crtc_is_bigjoiner_primary(crtc_state))
> >> >                     dss_ctl1_val |=3D PRIMARY_BIG_JOINER_ENABLE;
> >> >     }
> >> > -   intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state-
> >> >cpu_transcoder), dss_ctl1_val);
> >> > -   intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state-
> >> >cpu_transcoder), dss_ctl2_val);
> >> > +   intel_de_write(display, dss_ctl1_reg(crtc,
> >> > + crtc_state->cpu_transcoder),
> >> dss_ctl1_val);
> >> > +   intel_de_write(display, dss_ctl2_reg(crtc,
> >> > +crtc_state->cpu_transcoder), dss_ctl2_val);
> >> >  }
> >> >
> >> >  void intel_dsc_disable(const struct intel_crtc_state
> >> > *old_crtc_state) {
> >> > +   struct intel_display *display =3D
> >> > + to_intel_display(old_crtc_state);
> >> >     struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.c=
rtc);
> >> > -   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >> >
> >> >     /* Disable only if either of them is enabled */
> >> >     if (old_crtc_state->dsc.compression_enable ||
> >> >         old_crtc_state->joiner_pipes) {
> >> > -           intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_sta=
te-
> >> >cpu_transcoder), 0);
> >> > -           intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_sta=
te-
> >> >cpu_transcoder), 0);
> >> > +           intel_de_write(display, dss_ctl1_reg(crtc,
> >> > + old_crtc_state-
> >> >cpu_transcoder), 0);
> >> > +           intel_de_write(display, dss_ctl2_reg(crtc,
> >> > +old_crtc_state->cpu_transcoder), 0);
> >> >     }
> >> >  }
> >> >
> >> >  static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, =
int pps,
> >> >                           bool *all_equal)  {
> >> > -   struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     i915_reg_t dsc_reg[3];
> >> >     int i, vdsc_per_pipe, dsc_reg_num;
> >> >     u32 val;
> >> > @@ -825,16 +823,16 @@ static u32 intel_dsc_pps_read(struct
> >> intel_crtc_state *crtc_state, int pps,
> >> >     vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> >> >     dsc_reg_num =3D min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
> >> >
> >> > -   drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
> >> > +   drm_WARN_ON_ONCE(display->drm, dsc_reg_num < vdsc_per_pipe);
> >> >
> >> >     intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
> >> >
> >> >     *all_equal =3D true;
> >> >
> >> > -   val =3D intel_de_read(i915, dsc_reg[0]);
> >> > +   val =3D intel_de_read(display, dsc_reg[0]);
> >> >
> >> >     for (i =3D 1; i < dsc_reg_num; i++) {
> >> > -           if (intel_de_read(i915, dsc_reg[i]) !=3D val) {
> >> > +           if (intel_de_read(display, dsc_reg[i]) !=3D val) {
> >> >                     *all_equal =3D false;
> >> >                     break;
> >> >             }
> >> > @@ -845,22 +843,20 @@ static u32 intel_dsc_pps_read(struct
> >> > intel_crtc_state *crtc_state, int pps,
> >> >
> >> >  static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state
> >> > *crtc_state, int pps)  {
> >> > -   struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     u32 val;
> >> >     bool all_equal;
> >> >
> >> >     val =3D intel_dsc_pps_read(crtc_state, pps, &all_equal);
> >> > -   drm_WARN_ON(&i915->drm, !all_equal);
> >> > +   drm_WARN_ON(display->drm, !all_equal);
> >> >
> >> >     return val;
> >> >  }
> >> >
> >> >  static void intel_dsc_get_pps_config(struct intel_crtc_state
> >> > *crtc_state)  {
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> >> > -   struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> >     int num_vdsc_instances =3D
> >> intel_dsc_get_num_vdsc_instances(crtc_state);
> >> >     u32 pps_temp;
> >> >
> >> > @@ -946,7 +942,7 @@ static void intel_dsc_get_pps_config(struct
> >> > intel_crtc_state *crtc_state)
> >> >
> >> >     vdsc_cfg->slice_chunk_size =3D
> >> > REG_FIELD_GET(DSC_PPS16_SLICE_CHUNK_SIZE_MASK, pps_temp);
> >> >
> >> > -   if (DISPLAY_VER(i915) >=3D 14) {
> >> > +   if (DISPLAY_VER(display) >=3D 14) {
> >> >             /* PPS 17 */
> >> >             pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state,
> >> > 17);
> >> >
> >> > @@ -964,7 +960,6 @@ void intel_dsc_get_config(struct
> >> > intel_crtc_state
> >> > *crtc_state)  {
> >> >     struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >> >     enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >> >     enum intel_display_power_domain power_domain;
> >> >     intel_wakeref_t wakeref;
> >> > @@ -979,8 +974,8 @@ void intel_dsc_get_config(struct
> >> > intel_crtc_state
> >> *crtc_state)
> >> >     if (!wakeref)
> >> >             return;
> >> >
> >> > -   dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_tran=
scoder));
> >> > -   dss_ctl2 =3D intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_tran=
scoder));
> >> > +   dss_ctl1 =3D intel_de_read(display, dss_ctl1_reg(crtc, cpu_trans=
coder));
> >> > +   dss_ctl2 =3D intel_de_read(display, dss_ctl2_reg(crtc,
> >> > +cpu_transcoder));
> >> >
> >> >     crtc_state->dsc.compression_enable =3D dss_ctl2 & VDSC0_ENABLE;
> >> >     if (!crtc_state->dsc.compression_enable)
> >> > @@ -1020,8 +1015,7 @@ void intel_vdsc_state_dump(struct drm_printer
> >> > *p, int indent,
> >> >
> >> >  int intel_vdsc_min_cdclk(const struct intel_crtc_state
> >> > *crtc_state) {
> >> > -   struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc)=
;
> >> > -   struct intel_display *display =3D to_intel_display(crtc);
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> >     int num_vdsc_instances =3D
> >> intel_dsc_get_num_vdsc_instances(crtc_state);
> >> >     int min_cdclk;
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
