Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sI6WEHL1KGrWOAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:26:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C186665EF0
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:26:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="e/LMY2po";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2631C10E44B;
	Wed, 10 Jun 2026 05:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2224D10E44B;
 Wed, 10 Jun 2026 05:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781069167; x=1812605167;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xyguAzicKDpRwqVxpKErieX871ero0ABsJPK7QyidQQ=;
 b=e/LMY2poVaViaupAqLXLpcFoREHrmNK9s5nr9clHu82DuBMGXN5Zjz3a
 +v+tVbV2NeUwadDu6SCh3XHCVMoVkJ7/Q1JQqs4mLjCJMyxvHhPbFuw+d
 1D4c4sdiNiH1SmsfxHfrhYCpOnJNxhSMC2EmX08bFxg6tPFOKXdAJH6Po
 oJpnsVeUpjUKojdQm+/ZQPHtfnY6XYHiyhnarVUHKko4IetsiTeOP9sce
 cATaZi8McaQ4pEXD3moRuFP46WYutI47pexpoZqDjsNmdSl8w+WfTtXE2
 hCYRpV+UyXxpDqBkTt2Wko4WToNI2dveg+Ie5SAhf8yl2MtQCDccW62gf A==;
X-CSE-ConnectionGUID: OBySnkckSx+9QG8+M/SGqQ==
X-CSE-MsgGUID: 3uIj3jWMTSSH9VDToE7B1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="85480554"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="85480554"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:26:06 -0700
X-CSE-ConnectionGUID: rQr9tDT6Re2uzlZfBjDtaQ==
X-CSE-MsgGUID: biJR8oTVTouW2PiOohBDeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="251139921"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:26:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:26:05 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 22:26:05 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.23)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:26:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qeuQwhTZLW4rYZAcPxZGXQU9HWE2pm5VVNFLv1CPvp2qCe+dFcQpx41KoCRnSoE3AogVvZiIWrfkBfDo7oDO2Wf7bqlXIvBCO75xEeTuRY1z7PDpPpRh/F78AsjtZ7OChImFz5f4Q8CsfRqti77Zk4rDrRL201Qyg4/umPycLqWvLbaIRccaj4xWO63m9bwxjtiEJaRzqvzsjsDRdU2oss3DwE3uSQlrZhXz6cN2ATg+ovzO99eeqpfIp5EaB0nxXC81DVY2pDMP5hYkEZCFTsPmdioYBgL63uY+EoZ0fUNWtFErMfvmzlzjW2N6jtiumEI7Fa4PmF3rQ95BhUrNcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xty5ZR0i8Gso9VzccDGIhn7di7t9uSM0C4y0E3OIA64=;
 b=w9SzyDU8hrNCDFCJVspTpW1UEaTGb86DOji66dxI6OnkihxiVfi746hDMF3//0hkyJ2M6YIRa5cgxnCznScWgEf+aGZdkHcA4j4hENl/1KK1YkufAxkvZ60y9/wapfxI43/LzNPh8Y4tAJ91tTqPv9WGL2xQmRC3BAJGPgphhxSmO5UlHM3Oc+eD+ffI0BGgXJlWFwD+TZiX3Dy2k/qtDiFKNVTvi6YsSRVb+2eYLvaoMniOKX+OEthylIVVAkU9Ij4YbTYpjtdhuUTF5+HqlFHrrCS9vc9t1XxDvwxOSdKyMrPjFlyYyqpg6EivDRvHw93DcCner0M8Kww8FMBPtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5302.namprd11.prod.outlook.com (2603:10b6:208:312::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.14; Wed, 10 Jun 2026 05:26:02 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 05:26:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 01/20] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Topic: [PATCH v8 01/20] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Index: AQHc85dAGvMoNsUUSk6FepSVEhX0j7Y3SX5wgAACIxA=
Date: Wed, 10 Jun 2026 05:26:02 +0000
Message-ID: <DM4PR11MB6360F9DD548E7F5ABF4D86A6F41A2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-2-animesh.manna@intel.com>
 <DM4PR11MB6360C42516DCB79715891446F41A2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360C42516DCB79715891446F41A2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5302:EE_
x-ms-office365-filtering-correlation-id: 84b4bbd8-1410-4381-787d-08dec6b0c34a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|56012099006|11063799006|4143699003|22082099003|3023799007|18002099003|38070700021;
x-microsoft-antispam-message-info: tUmwERv+hgscf4LEfZqT5/rHlvaF0nBzlJvIRqa6/UoBh/dx0KmP7cdqG0Sp2G6RxENqQvIRyBql7Q2yClcpi1o3EFYho86As7rwmMyfySakOpGhibLauruLQmok2bV457pyXWSS+HfE6ybacHIeZVk6tY36A0DVZWM/y/SkhBxt3zaqnJVzKLcUvMA7X5dBGzunliMfDLrRjc6/8isWKP7NYQZR2nf0i66Kika+VUZ8tBur7H0BzJIlEHZnyCP6Jw96abYwq/R/jLILhoqdtiC4FkBYghkW5S4hP4IUvkWLb8bnI3kAecJ7SHnF33UF7Ho1emX1Ggr4H+dwXW4aTH8Uf6agOZrYKuXNcxecb3xQC3m+mb1CBvjP5+pP6R+54nQBZ3CVj4C+9nX20EuztVWkH4/f82kMuZ/UifgKE6NVhbohbd3k7wDAVeAVawia0bpdiGs3TVf8+pFz0uDl5ce2wzblY181dLKF2xPmlceavN94UkCdAylvJtZQ30IrydiJOIvMRexYKOAy+5LwMOrGY9q7bUHkuujK9utCq88S6tqTpqpqPIullhAtfxzL1W5GAqGoq/M3GZ1IwvFvb2DzE90LGM+jYba6/kFaMSLs3nNrxtBE15Gc6NzPBTTB6zwMRMgHO8z4U+qaFpQT1oJhahRXVyAUszRbEpDv5bknE19IlgEjrAMso3zbwfDetQyGqEbm0EXGam4Ejsi0xyw8juKGFhbwEMyFJOky0OUTzTVnf0vrPZyAn9FvDUVG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(56012099006)(11063799006)(4143699003)(22082099003)(3023799007)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DSzZu7ySx7Fpg/QzBVGRNfjRYc0K/uF2EAGe8kr+aUzUoZ6gfSAHMV9Nagf2?=
 =?us-ascii?Q?6lVbmpnt8cobmBItt9DTTjv5v8MNlCBQseDJlsID+s2u4licwuAAQBDjTKVz?=
 =?us-ascii?Q?bJ2t+Tz1fKriDAWe6CfMfyN4SlUSVLatL/3upPMndAro++STpix2R+OTPlNa?=
 =?us-ascii?Q?nV4uJbCz9Re20zsfwJaZqndZpoxsQwJd6J2AAtZIg7tYHqIopmMyN4mq1v/4?=
 =?us-ascii?Q?TN/736wMt/yKOoum3y8NYqXqDTlBLWYxF7upl/1SBCA5q7+glWAh81dLoFbn?=
 =?us-ascii?Q?44lMXEmi5Nmi4P90ms+88sgnjcpK7OW5xphwk/jNZNJOuS/qx2pQY5VIWCDf?=
 =?us-ascii?Q?7+T14Ezj9GZX0B0fJ5wIODF22i/MYakujKJLsAbEg2uAeHOTI0Y063xO0YUW?=
 =?us-ascii?Q?nFYanXEvCC7864bdRCIu2LEugadKVysj+Fbq9HgX5VpoyWI2uC9aql9NDz/x?=
 =?us-ascii?Q?9TEGrBUMxA58lP55eQio6vEZzkxokjOSfZXQBx3iaT5x2VdO9kvcfKZ/5OaL?=
 =?us-ascii?Q?UOC3qFjLY3jCD9Xvd0In55wNynhoJYmDnRHL3V3dg8WfQs6DFITa1HU93I1O?=
 =?us-ascii?Q?K5yq7I0yU0vbtdFPXQHGmjkgOzKgixitZyaxvb3v1+EdieWT+0eH+9+h9T5M?=
 =?us-ascii?Q?CJ/RqIWyEC18bJTdTU1jT2rC68xOvdqU/hdijp0VYsHbbsr+C65aXr1u5aIJ?=
 =?us-ascii?Q?6hGXStzWWcWdy2w6pEBXN3wO8HmsGJHn+jhqDclSfMkljaBrhFGIwt2Y/6XK?=
 =?us-ascii?Q?UWsct86eFPiz//54arVP5nIUkmG/gJKi1VQ+01LKAEMvtLp9N96imEYmlIJm?=
 =?us-ascii?Q?HooWDL8ePxCluv+XA6+IZqlVNHJsRb8ZNM3haSB3PJ+oZPF9QV4IgcgBHfa+?=
 =?us-ascii?Q?xumcbTE+tE1SLBU11r+16kltwNApW0uZB2FgcnOT8SNBxslobtOZ5EwlOcnK?=
 =?us-ascii?Q?7Cytvnw4ukfQjCVOU1i6kGGDP8rzjCHU5SYjrWBCOXcj6y+DbyMhDTbBB/Nd?=
 =?us-ascii?Q?s7I43ds1XforfQ/7HNsS559KSzRhQD9DZRcjnfwhKvXthDnvgXZhhXuzXswy?=
 =?us-ascii?Q?Yk06VL8njYnxCgPAI0mYXiQcVqxfuA+bSxtXEew7r0x6wsd+CT2WGTK6J8mh?=
 =?us-ascii?Q?DGz96HJIYHVVCpW0sUtOrLZqmsWGAxju31pninsHXw5hmNbTPYNFcQfkxdv1?=
 =?us-ascii?Q?NGPJ0L9pU0IDcTMVu0MEvO0/i3HzuZmo8iLWgiOx8b0Wj8/Z2M6FreQFLoBv?=
 =?us-ascii?Q?w3YVOiGChHOlXphZ9kUwph9ggT2PXn/h8gUJDL/JKtfTaGCe3TiwLacaxmmo?=
 =?us-ascii?Q?5fuvduaN5//rudyhTTDC43HAUM2BD8x5mECP1GZy9YZfZW1alzRKB5o2DGBe?=
 =?us-ascii?Q?0wRUve6gVGWWzvvT2QlNuHMP07Ag7caVPPipHpK7A3owwyx1WHrCZzS0+dDy?=
 =?us-ascii?Q?VkoBKkyTIYXPmI6JAWMXPkTd5sC7TdyrKzB5hGUyzyxtO7c8WjrJoDz9bVBV?=
 =?us-ascii?Q?tcwBYuynpyQNod4lOL9lDtFTR0hifrvADCnrodP7pym4pcZ59LnyE7e3DH2b?=
 =?us-ascii?Q?+SBB/dgxR67vcodWXXGxs1OAn9TeZ/ZlUIRNPyZiAmDqXbzsHjTCiiLGH8q8?=
 =?us-ascii?Q?xHqPupYgfVQECJ3VsliHjP6S2+7E3zUR+8sUjKPgOuecX3FKHEZ1OV6DOZrJ?=
 =?us-ascii?Q?WQiULK6Ms82E4Q/lBiyv/byLRTX541e7oo4+V0nLbbeMXp1KP42YA5XaOgNm?=
 =?us-ascii?Q?CnClIGq+lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Chs45148J+4LCLVVck4uwDAzap/lR/DnD14W6uUIP+NmQqsTub2Qjwo8cFOrUe3Pidg0g4M8eQxBHem8uC7jJZiuYZl+N4DF3corzl3ovbghnUBlzBJFHsFozvcmk72h3/ZpwCkdg2RKRu9lK9tbjGa45E8DD+J4vPy6bOyOG19BtEr064oiQBNJeAm60Fxnwqy2EkHMLE04/j744EzCs1ZLbkJ8f++zL5U7eo6bF7oZOv0e8208T7mmmq4cCZU9ZC0dCmLVXGim5OzaQuA+x/VvwfuSxIGjadUzvMsp6q7FA3UzG/+/yhXncmpMRcdqjQHL/ycAhwwQinaAlhygsQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84b4bbd8-1410-4381-787d-08dec6b0c34a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 05:26:02.5436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X5SQRg0t5/BiCaR+3LwRoexPnNmx9+TWlpRZ3fKHzzxV0hDfUkqJqB6tq36DA4WvglPeK6900SUFeLC8bTuE4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5302
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C186665EF0



> -----Original Message-----
> From: Shankar, Uma
> Sent: Wednesday, June 10, 2026 10:47 AM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [PATCH v8 01/20] drm/i915/cmtg: Add intel_cmtg_is_allowed() =
for
> CMTG
>=20
>=20
>=20
> > -----Original Message-----
> > From: Manna, Animesh <animesh.manna@intel.com>
> > Sent: Thursday, June 4, 2026 1:24 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>;
> > Manna, Animesh <animesh.manna@intel.com>
> > Subject: [PATCH v8 01/20] drm/i915/cmtg: Add intel_cmtg_is_allowed()
> > for CMTG
> >
> > CMTG is supported on transcoder A and transcoder B with EDP, so add a
> > separate helper intel_cmtg_is_allowed() to check the prerequisites for
> > enabling CMTG. CMTG will be enabled only in specific use cases such as
> > PSR2, PR- ALPM, and LOBF, and will be used in conjunction with the
> > DC3CO feature. DC3co will be enabled in a separate patch.
> >
> > Note: Use-case-specific checks and transcoder-port compatibility
> > validation will be handled part of DC3co feature implementation.
> >
> > v2:
> > - Remove separate flag for DC3co from crtc_state. [Uma, Dibin]
> >
> > v3:
> > - Do not access power domain members directly. [Jani]
> >
> > v4:
> > - Remove check for DC3co state now. if needed add Dc3co allow check
> > later once Dc3co patches are merged. [Uma]
>=20
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> > Bspec: 68915
> > Reviewed-by: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c | 14 +++++++++++++-
> > drivers/gpu/drm/i915/display/intel_cmtg.h |  4 ++++
> >  2 files changed, 17 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index e1fdc6fe9762..a279f3dcd1ec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -4,7 +4,6 @@
> >   */
> >
> >  #include <linux/string_choices.h>
> > -#include <linux/types.h>
> >
> >  #include <drm/drm_device.h>
> >  #include <drm/drm_print.h>
> > @@ -16,6 +15,7 @@
> >  #include "intel_display_device.h"
> >  #include "intel_display_power.h"
> >  #include "intel_display_regs.h"
> > +#include "intel_display_types.h"
> >
> >  /**
> >   * DOC: Common Primary Timing Generator (CMTG) @@ -185,3 +185,15 @@
> > void intel_cmtg_sanitize(struct intel_display *display)
> >
> >  	intel_cmtg_disable(display, &cmtg_config);  }
> > +
> > +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state) =
{

Missed to add: Since we are exporting this function in header, would be
good to add some comments as per driver policy.

> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +
> > +	if ((cpu_transcoder =3D=3D TRANSCODER_A || cpu_transcoder =3D=3D
> > TRANSCODER_B) &&
> > +	    DISPLAY_VER(display) =3D=3D 35 && intel_crtc_has_type(crtc_state,
> > INTEL_OUTPUT_EDP))
> > +		return true;
> > +
> > +	return false;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index ba62199adaa2..ed540581738f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -6,8 +6,12 @@
> >  #ifndef __INTEL_CMTG_H__
> >  #define __INTEL_CMTG_H__
> >
> > +#include <linux/types.h>
> > +
> >  struct intel_display;
> > +struct intel_crtc_state;
> >
> >  void intel_cmtg_sanitize(struct intel_display *display);
> > +bool intel_cmtg_is_allowed(const struct intel_crtc_state
> > +*crtc_state);
> >
> >  #endif /* __INTEL_CMTG_H__ */
> > --
> > 2.29.0

