Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2rXoHauZTmpXQQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:40:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC067299C0
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:40:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LRJG13+8;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4760D10E659;
	Wed,  8 Jul 2026 18:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E4610E659;
 Wed,  8 Jul 2026 18:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783536039; x=1815072039;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/a7I9VGKPGaHe37sztV+MmQh1uCfGYIXdZjyKXFoXF0=;
 b=LRJG13+8bUc0V7w9TXLax/AquzY6oxphquJU5slWLuv1XsvqX1EMpbQg
 /ejPA0O7sZQhQwPsnc+wgYMncU9ri3ouyFmdbi1+euNtmY1qfLICj8GpD
 84ziTXvE6J1TAGnP1fPPe9r8mzJgs5HFqcCyJm2rqqD2MZImV7b0xcHw9
 g7ABwNmK2AgxFPXWWqyi6VFUyJzSHyrP5k5kd5FTyj3l95YhQW9lwfMVi
 /zTGyIQ/iE1xyO7lPIQmwmAw16dPtYKkzKSzzkNmSEN/8UhdhYbCQSPFV
 /ynO/t2xcSg3u1VBBPiFJJw2DcqO2PwCWCk5oB6JbP/CWsER8RsdRTYFj g==;
X-CSE-ConnectionGUID: 5cELBNeOT/KdEhB+XPqY6A==
X-CSE-MsgGUID: xOE3At9DRjuJZTWI07u6HQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="109756398"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="109756398"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:40:38 -0700
X-CSE-ConnectionGUID: Xsu2WnvuSMWs4vRXN2KanQ==
X-CSE-MsgGUID: 2yN5w8NBRMytfufLvpn7GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="248005980"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:40:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:40:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 11:40:38 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:40:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sobPHAMG7Alsvk5alV7ZqlW6i2RiXNY03wZ8UCS1Dj3nd6I2WLTVSSydX+9oQwld86d7jvax0l7ReX+dcq/0jOlNVTNGF65qR1uU74yaIdG0kh5i5E7G2rr2zlFDgqG8q9IeYhOYQiB53NofSTjYHeHp90DywEL3SMIznZJf0mbXlFu+GT9caqWxr6DM1nYOTlH6uH0KieGOL6xhJ9jVDZ4Vkg2XJmthS25SE+yad5kEf6VDssL7kQRuoFB8HF2YfIKER8bwKc40NAxh8K39aLRhl1QmhmAnrukFPqZ32IdmrUj4Tn5rhUOv0MJ8pRtocSg2fSRp5WMvRFmaC0ajyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mxUyQWTl8aEmVygamac9TvqUJ0VotzO8WFP8cOQsPRE=;
 b=ShzcWA4PFEUcuA0H2MCBELqhINMTxKtkalsrFkhwqVWbFGPAvv8FYP2Dt6e0onR9Q3jnnwalomM5kA/CSl2qHj31mDOcHdGeA5e0Xx2slk5YgciLGeg6bWCt37O/TVBnfnvPRQw+l8tIllcuOFuXHwCrlsiIDglSj6eDlvHikb2euZZdal8htVVFDrkmEpJ+BT8IyQEZYdy+LI32zo4f+FKR6rD13sO7RAT+wf2+Hq2yG4ydLJY7BC7C3WlXTL0F83ztyJq14F+U0RC7V2ejTR5NKCAa+holrxmvcJYk913GvpW4jhVP8bGDBlh9Izr8ReyRadhguMZQVqRts3CoLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA4PR11MB9155.namprd11.prod.outlook.com (2603:10b6:208:569::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Wed, 8 Jul
 2026 18:40:31 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 18:40:31 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 02/14] drm/i915/color: Add CSC on SDR plane color pipeline
Thread-Topic: [v3 02/14] drm/i915/color: Add CSC on SDR plane color pipeline
Thread-Index: AQHc/jxNJb/wuJ3LPEOzx0L2itm+BrZkFd4Q
Date: Wed, 8 Jul 2026 18:40:31 +0000
Message-ID: <DM4PR11MB63604E9B39B15E3763DAE599F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-3-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-3-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA4PR11MB9155:EE_
x-ms-office365-filtering-correlation-id: 5dc93bcb-3b7b-47eb-6672-08dedd206384
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|4143699003|11063799006|56012099006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: Z7z5JNZDAK2Bh6/ZhwbmQzgQwZMw0iSkdRmTy2VhIHagFPr5oi/2Yb8LX3zu7e8/PLFBDMUEXonlpHyXi+jNajsPXktFJHs0X1UAhstg+rluvHXfdVLd0j6Nmwk8PqG2nvyVpuEiYfjnjm6MnAL9GTA9Ikk+JUmy9/82fC6Axm5Ogx+UtOYm6emXKmf37Kw88t6o3qiDcgNaDaeEmBuNWeRiiUZ6Injjf6e0GKHbLJBz+mGS3NG1nSDyCtA9eizbIKDtIFoDNxLjV84E30j5qRczFxhoYtiQ+6YYbtxsLljO+6gkfH13C7KxvvJlDkbRZC4MHHHEHOSpTx93XEW7QQAHuj2/Baq1UzpWCz1rMuf4ZlqISM8+F7zLYaXffqOBIt5lMjhoa9pZJLSazhTwAj5TVhhm9eOl8zW/zqdoZDjWStrfEADZt+yLdc6CRU6NZ97R7nqJ0WoZ7s+15UxkkE+5JuAz7ETVSFtDk6G9kyYxA5QrEtpUE9aUA4nTDv2mmvpRKYLhqcVzp37FZqBja7SwQbPeTqnb9S103iVIzNT7Q0NJm6KWbmoCqzJVMJUY07MYSQDS+GFweHu/4eF8C+QfH5YFzZfHy78Z7kdWplhU2ARbXieBIYcqtZ9UPZTM0dzbpcwpkhJLtdL/HQDsnj2+CK/T9hpsNna0RWuW6WhJcjxo9H3gN9v7VX1U3rxjyoE8M5bXCLIBJ25K2Oe/E6rQAxSWzSKtEZ+uOx3sPtM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j11WEtcVdcNvzAuyTCTHi8wWr5cXqJPu9UJeSlGYdQlKX+OSdlXBZISx8Y4N?=
 =?us-ascii?Q?90aAgrT1esV38c8a6WpTdkS4fG7IzUdkcXIUsVnjC/x5YgPkdRrMzD9mMLX8?=
 =?us-ascii?Q?QjqgUW4Zj1d90ZwYiqZom/NRbpsL9/lpDfk5TwiFXkecqi8h11JTuYbLCFlx?=
 =?us-ascii?Q?eAoNKkPlxX5wDncrJrs4ksTRduLUlPXZCe2xwnCPbSWd8DuQtTFBlbfTCorX?=
 =?us-ascii?Q?ti4grPTMh9FTwVjj0+y0IMohV0ucav+tScr9UmqF40HFkoSB4hTb3QrluYvi?=
 =?us-ascii?Q?kTxRGj6TKcMTEzbm6E0V4MHcvZyZXMt5f1TkS37EDwlQB6vFPdHMbZxe3NNV?=
 =?us-ascii?Q?/li/qeyi4ivoniCB6ndSqfQnCX210QBX7cFHEXy02yaqldZol6WGHr0Yv9oj?=
 =?us-ascii?Q?QTEhvX/ucqL8n8N6FNHQvSYFl5cToUktfJawassDYkg/PeFZEmtWoXMhgwm+?=
 =?us-ascii?Q?p9Yd0hjvFl2fTDo9D9QMF1IYqvuIEXcJxOwGrSITe3XMmI1lUuPQn28QSbZf?=
 =?us-ascii?Q?w0Q4dpI4iEgODItGV99VxG+pwrcP3IPUfEK3sc2LFd1mF57rf7oFxUor9Slg?=
 =?us-ascii?Q?z2hkGZgWjkphC0wdznbGmugr0uogoRVOzVJPRDNHDcUrKeYoEDKxPbzS7IWI?=
 =?us-ascii?Q?B60kWTzAjprUgg1sP0YP3Gi/NzvpjBt/ONlbtpXlUD8uywUI1XoCI1AW2NY3?=
 =?us-ascii?Q?xFdmt2NbGrffFrlK+z7Gf1pytF72U5mREJdVZ+yDDx6tF/rm2RgSMY2sLwUu?=
 =?us-ascii?Q?DyRIjjzSE2vF55eT/c7xeB+qmb5u0oQERGKYfokbphoSJapE03XvD1+0FyAn?=
 =?us-ascii?Q?xG9I4osBJqW3noFWX0w/NbKlYVcqFSM/behFSM2VcMrDNFRSK1ZUrXeO8vwD?=
 =?us-ascii?Q?KpBg7bNAgf+lDl93UD6ZLiaGvaTWg6zTlBV29fZPiHNpDKR1SIhsBXiCesFx?=
 =?us-ascii?Q?gMl2lEektzvCbE6p5PU/MocSV4pkYK0PXbsR40eTp26fpkIwXCSjmdNlDUVG?=
 =?us-ascii?Q?mZtq8fzSv8eF1NtlqFEUcj9rpQ4T3w7kHTmpcyEe/6evSmjclhM+fFJAIg+8?=
 =?us-ascii?Q?D0rOizu/9OzPEl7g7c3nu3NO10Dv+Fcq7J93XJy/qrrcqdSlVuBGd2Gxgxxm?=
 =?us-ascii?Q?0+LbwzPMSbJI/JavaqOiLDv2BAmT7e0FXPQuv5XK5Au1GzV9NKIhxGb21L7+?=
 =?us-ascii?Q?9ZTBsopNf7UiEqE/f2v70Q5uApL/cWqehXnuZ7Ggp+FkJK+HvC9hW8vCfASx?=
 =?us-ascii?Q?MYOAG5cTrc7ZNEgcI6aFkEHZlqCoPB+S4mNWnWGfmM6VLZZaRAFJn3eWX7kl?=
 =?us-ascii?Q?Vd6x+uMZzY44/0nWYH4I7vRZXmPk3MtQG57uvvP5AyRgLgkZXSF+s6bW0Zv+?=
 =?us-ascii?Q?7m4i3mMTl5BsI0EIs6RObtvNqzwVm5E6AgVe4p0mIyKuxie7sZswzyE5bB9G?=
 =?us-ascii?Q?P4GvrNOOt/+LJeOITNM17mRrW601YyNAYH1zYZmfQzmWoEXqMYNiPRtVMlAM?=
 =?us-ascii?Q?9cAQgzUViV/E6XvWcYzpwP8lrSHVzq+OM6azOdsXq+Kf9dO7WTMXmrlzUPnd?=
 =?us-ascii?Q?XqDR7wxFpeeA0TFxbxvOAErxi/BxBeWqu/wIQ/0WKKB6FILLyGjC1oSxI+JM?=
 =?us-ascii?Q?+MS7MQgcHVFeaZv8t/3YBlYZ91BpPTrBblTWKmiOEHJy4wepcPvgZ/fxRKUU?=
 =?us-ascii?Q?kpKreBqT2UgZ2kmeY4MptDS5j7AkdHrlikU+lI5ehH1DcESdMpqBROt5hCqV?=
 =?us-ascii?Q?2qWSeSq8uA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QKcaap/bOMqjjody+e+Sz9/lOmyo1N2iHxX9rgQPavafEugIYGmYb3QN+uM3rVC3d4VN0SaeV2Uwtls+9xP3XM/bYC0vtG0OLoudfpQAy9IGJGpm/uJy22/4LXwpTrr1jo7mCKHelRbjdjeWH4vHi31akffeLIHh7RkftA63r1vrrfXYZI14e17s2HgGTK/h1Wam9nhq/yogJlEVQRiEkrwuWtiNG+tvoWdp0CRyxYqAOWihtshRVcd32vmKmss/uaB+013rj9aOH9QTCY4tGEUdZ844VwBeaMdLoSi23isInM42EAxuI6CtK7WGvb3VdPEGyCsGYaovH7os2UIUQA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dc93bcb-3b7b-47eb-6672-08dedd206384
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 18:40:31.1258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JZy676Y7qjoLvbVfl5YUszD47A0Z53nPT2N5UmtVlgNVGbZuBcRwPO9cn+IvdUsZEVyJC8BuV0f1VsQapNEYxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9155
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BEC067299C0



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 02/14] drm/i915/color: Add CSC on SDR plane color pipeline
>=20
> Add the fixed-function CSC block to color pipeline in SDR planes as a
> DRM_COLOROP_FIXED_MATRIX colorop.
>=20
> v2:
> - s/DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC/
> 	DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB
> - Inline icl_is_hdr_plane() instead of storing in local variable

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  .../drm/i915/display/intel_color_pipeline.c   | 21 ++++++++++++++++++-
>  .../drm/i915/display/intel_display_limits.h   |  1 +
>  2 files changed, 21 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> index 6cf8080ee800..2ef42a133a98 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> +++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> @@ -43,6 +43,16 @@ static const enum intel_color_block hdr_plane_pipeline=
[] =3D
> {
>  	INTEL_PLANE_CB_POST_CSC_LUT,
>  };
>=20
> +static const enum intel_color_block sdr_plane_pipeline[] =3D {
> +	INTEL_PLANE_CB_CSC_FF,
> +};
> +
> +static const u64 intel_plane_supported_csc_ff =3D
> +		BIT(DRM_COLOROP_FM_YCBCR601_FULL_RGB) |
> +		BIT(DRM_COLOROP_FM_YCBCR709_FULL_RGB) |
> +		BIT(DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB) |
> +		BIT(DRM_COLOROP_FM_RGB709_RGB2020);
> +
>  static bool plane_has_3dlut(struct intel_display *display, enum pipe pip=
e,
>  			    struct drm_plane *plane)
>  {
> @@ -92,6 +102,12 @@ struct intel_colorop
> *intel_color_pipeline_plane_add_colorop(struct drm_plane *p
>=20
> DRM_COLOROP_LUT1D_INTERPOLATION_LINEAR,
>=20
> DRM_COLOROP_FLAG_ALLOW_BYPASS);
>  		break;
> +	case INTEL_PLANE_CB_CSC_FF:
> +		ret =3D drm_plane_colorop_fixed_matrix_init(dev, &colorop->base,
> plane,
> +							  &intel_colorop_funcs,
> +
> intel_plane_supported_csc_ff,
> +
> DRM_COLOROP_FLAG_ALLOW_BYPASS);
> +		break;
>  	default:
>  		drm_err(plane->dev, "Invalid colorop id [%d]", id);
>  		ret =3D -EINVAL;
> @@ -126,9 +142,12 @@ int _intel_color_pipeline_plane_init(struct drm_plan=
e
> *plane, struct drm_prop_en
>  	if (plane_has_3dlut(display, pipe, plane)) {
>  		pipeline =3D xe3plpd_primary_plane_pipeline;
>  		pipeline_len =3D ARRAY_SIZE(xe3plpd_primary_plane_pipeline);
> -	} else {
> +	} else if (icl_is_hdr_plane(display, to_intel_plane(plane)->id)) {
>  		pipeline =3D hdr_plane_pipeline;
>  		pipeline_len =3D ARRAY_SIZE(hdr_plane_pipeline);
> +	} else {
> +		pipeline =3D sdr_plane_pipeline;
> +		pipeline_len =3D ARRAY_SIZE(sdr_plane_pipeline);
>  	}
>=20
>  	for (i =3D 0; i < pipeline_len; i++) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h
> b/drivers/gpu/drm/i915/display/intel_display_limits.h
> index ea89473c177f..7ba7360c574e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> @@ -169,6 +169,7 @@ enum aux_ch {
>  enum intel_color_block {
>  	INTEL_PLANE_CB_PRE_CSC_LUT,
>  	INTEL_PLANE_CB_CSC,
> +	INTEL_PLANE_CB_CSC_FF,
>  	INTEL_PLANE_CB_POST_CSC_LUT,
>  	INTEL_PLANE_CB_3DLUT,
>=20
> --
> 2.25.1

