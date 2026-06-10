Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7kF+IY/zKGp2OAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:18:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8389665E7E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:18:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="fLPY/1tS";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C7B10E43D;
	Wed, 10 Jun 2026 05:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D46B10E43D;
 Wed, 10 Jun 2026 05:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781068684; x=1812604684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ms/znRjEy3i0QV5qqcAZ3UTKN7nlCPz0f45bwSAQFY4=;
 b=fLPY/1tS1Q7c/mC1Ag1kkluMhQoFoQzFrtyNbaFwVjEdje2GDeD0d1tX
 rfInBk0jOxBqpN918tKvQ6fCfXO6ZNNwuGIwNKhzemsKY8F0pZAqBbWV0
 0W+Vr7JeLFpJgL9J9onaRZhYOdakD6lVpoanXCUR4YctdvvojiTjBILWa
 JwQyMgBp/D/xWhyFE2VV+SKLooZsnyhKLjXddJzzeob5M9uf66uKTLBT/
 p3kJ3PqseJEwQ9ct2w4ydNG0Q5vR489CYhmGnp3wMO4Cd0Z2zzn6Wz6/P
 UyRGks+mFakqDdQOOjaS7iWOzBsb4XxYkWwsF6dfJRouoDwm1syZkKIb4 A==;
X-CSE-ConnectionGUID: WMAO+cqdRj6zWNqwPfRxpg==
X-CSE-MsgGUID: eLlL/IDcQ5CfD//M/Xm30g==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92418100"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92418100"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:18:04 -0700
X-CSE-ConnectionGUID: vJ0j0n25RliwRRSMRLBg6A==
X-CSE-MsgGUID: /KUZBlfUT2CEUgROq3Osng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="269744689"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:18:04 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:18:04 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 22:18:04 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:18:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kcwdEhjS0oI+rLyucdSs24IVN2vpCOb9o7x6LXz4kTDTv9s7CwoKml9tGxpZBg/RW1iHEBQGcNVFj6YyKJSapaXBSAo7aTQ9RSw6vkJxmaXK96lo4lkwqmhl1E93E//1ZjtrVBpihRb47dg/NOhv09DYmUPuokv04Soo9Wc3Dnqk+cAAfBfmgyzmQ5aS660oKjgkjWB16Fc4PrItHs+DbYxiaOsEM5/PPfZq38roobIypKsGkdH0kYMB5X0oTjQvGkbjLfUv/wF8Wq3KD75yUFpe1qNNR+yydLKaiyfXiz+UsM5mrMD8Ksffx7yfUIGE5BqSUD8vFPKZjD9n7J9jPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yPpF4xZQTGAsf+OYJxakYMxijYLdiHp7WTB60pd8udc=;
 b=xqJGb6lWgvr/zlLI4imtSxUsuTlvCuZ7RnB1q5H69D+1DTKREPJ0rGiW2rU6hPgZIP5RWDHpTX7MwG5dqnc92jrGQ+O75PKHlsuucH+DKLpKFhVuuPC5+0p7EB9H3T5WuiT2Iyr37zPBjIV1llYZlcTSaKpkxxpmnSnR3VkA4Fu/FHKi8g6NO9lC8YGjj0M4Jm82kjJQ8WRmlcz7XLAYctany0goTrOOfstAl6MvIpOEyERfIMVRwIO5jUKuJmRiMu3IHSvwDRdjYxjbmeGfO0zd4cg7VXksEsdwudx36XcsReLRL6uk/5FTL6c1iusIPeYfXMiZ9yz0VrX+j3rtbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5302.namprd11.prod.outlook.com (2603:10b6:208:312::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.14; Wed, 10 Jun 2026 05:18:01 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 05:18:01 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 02/20] drm/i915/cmtg: Set CMTG clock select
Thread-Topic: [PATCH v8 02/20] drm/i915/cmtg: Set CMTG clock select
Thread-Index: AQHc85dAwVtF1tBcXEOPdAQmCPt8wrY3Saug
Date: Wed, 10 Jun 2026 05:18:01 +0000
Message-ID: <DM4PR11MB6360D8A0B0A117A27F9799CAF41A2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-3-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5302:EE_
x-ms-office365-filtering-correlation-id: 46589428-28a6-4b59-6b38-08dec6afa46d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|38070700021|22082099003|18002099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: n/hIPvnRj3hVL3Qjwf2kd/SxNJt0OXp7rmUwR0UCiAF18B7fqi0KBDtGc0N9KdeibzRW5bgRri8jUYmspYIa8a4Rxyt/iY0EPNLqt6eidTf73n6KByFZ+t5/CMmRbbYR8BHNgUaAnCOW4E4oUtsnO9x3ugInbdenBAKR2lzULQj/pG3M/sub9Xbvt5aVXOdiuhUbLLuM/mWxwS1XRVkttUDvH0Y+bvG7QPIMMLPhPLzE85NI4t2Xwh5ExunCUKneYgiFhLEgYBoatcUA2jeLMYQiDSjo0Zs99NtaEu01M0QiuMooy2d6tTvXvMWybRWH/XbbWxOBFG4uu8JvVcwEHn9iPBdjmYSuPgoaDi+3lUKlI6rn7QlGcdkIEDitwz/dH5dlK3EOmAK4UOwnmIZswCvvqPcl6DGbEN+ZTW2wX93Nuc0gByeOjULwPeLQb93qA9eI0dzTuoOXCN108JC8HNTo62+T3S3CnJQxblZ97zx70aSc4R29WNS/WARzZol9ulUFIXPu/okQWSlglATYDXCl2lxP1Lllc7A/pNLwWXZpg9H7PBfxd+H6yhMTw6vU4wNpRHmtpjerrsStpqcsv9u1L0C+B7g+r8f0NInrvdxk8ePRsMDqXUy7l9J/CxPQ2Emtna7STiNzUNbLEbXX25CjWD0YfeELlo7XCox808GsxmQ9//CS/cKYdWn2LzSrRVR+NGLdN0N8FxkRnOQnX5KjzveyrkyuAGTUkRslzxtHZbkP4Z4Sm5c2CTxGrWo8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(38070700021)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lyZYSQKxfaZJEz9G7RKIThXpaHoNj7ioHet7MMb58yFfrVplepTaPZnxVLfX?=
 =?us-ascii?Q?GjoLLpyKyWOK9+q1ZzgubMr0BlVBdS5TrI838J5lP48oZG4ZZwTMoVoE6Pfp?=
 =?us-ascii?Q?qEk4RbAxqJWTah/jnbBYLJRW1fdxUe1CKVnQKL1o6zHIrdswIaMgij+Dmimx?=
 =?us-ascii?Q?SYD3R5R4rO1/VynsuYZSnGozfqtiBOohN6t6XU9qZEQ0Kxpgle7I9RBVMk6h?=
 =?us-ascii?Q?8EcRQ4vPs9cEs/FK6MPeAshiJXPTBOkEsioDveDn1TOLIAXcUUQ8w8THedUh?=
 =?us-ascii?Q?cPFUT83bJEk8s8H9GjaE4aOP8wUbpgGC+SofVCye1jpvPZIdK2c3im4ogZPx?=
 =?us-ascii?Q?SRLwtG8g4yL3045tDNAKYuOqtuyVGvLMRueTKnO2g32/AVSFWBokqNTeguQ2?=
 =?us-ascii?Q?80A0AvAQabbcGJCUB9npyEnlu5KHIjpyzGEy/wBlvGH2DFQD9rpv2ibzO0D2?=
 =?us-ascii?Q?EAMLM3qrntCwVbfreolHzNgGk0dvbv6OxfJB4JAWxCZvBYV2CLbjX91+SRz7?=
 =?us-ascii?Q?jXkHM/KL9pFz9CWOw5YxVDK2zqERJkhVl7u4+tCPdLWee1URQ4MfOIzTCC7w?=
 =?us-ascii?Q?8b9My8RkFK8JSrfSK1p9HIkNqz2PSNgCphs9osIH0G3zykPugFErV5/qIjSc?=
 =?us-ascii?Q?4XWDbIKaI0QH0hbariI8hYuG7T7hIcsFKj9YI9hmC4C0jvIdXCLFFu6XAInm?=
 =?us-ascii?Q?FxLXbADeqDyTZwcTpjeOfWNOyZs3Y/980gbWPGF2Dmmuw9MjTi9Vb6DzrQiP?=
 =?us-ascii?Q?6RQOW1yUei8gXYU4MlD0u9+KAHx/eUy7ubhMsQ1wNMRszN8XgRTHuHZXwcsw?=
 =?us-ascii?Q?zlQFPSeGnw13Q3IdVz1Z8iqyFjD6fIvlRD9fL8LshnzgkARW+CHXIhKc3spx?=
 =?us-ascii?Q?r+WGf4bZKEGQj5DroQpU+O2E5N8yYnt4Km4JcujWebSNO8xsAm74BAteJO9o?=
 =?us-ascii?Q?Lid/emRheDAX1CaMofMQRkCAIQyT6elgVco51vyN9dD+ry0YS9EJkwD/7a0v?=
 =?us-ascii?Q?OAA1xlIpDBkEw1xxBa0kzvTd8vAC0Jt0LeI6zSjbUvd6hTUe1wjV7HzbAw8X?=
 =?us-ascii?Q?9YOKsa0Z1n45ywXEmDGDBcysiRliwdtsYfTufQXZXUTovJqjeh8lPorhrTe6?=
 =?us-ascii?Q?Emp+ZNXOgGdAZlI2CdUjYw1JPxsNDP952Aeov5y6x6CM214/5g5ZgPZMXXM/?=
 =?us-ascii?Q?+8R86BREjSvOsrkKdvVd9f0EGFlvxP2mxxuZj5SUUudsSs2sa6fS1NH0KgUx?=
 =?us-ascii?Q?WDsxu+o/eXD7TNgVBnfRMBFB4/EfA+r+D4THof5iQbJ12gTSO1zMD/zeHWBT?=
 =?us-ascii?Q?rgZEwZ9BlkuWoJJSvBg6MD22d07WDIKI/UlCdaVjdvzFaF52rP9kzx9knxAA?=
 =?us-ascii?Q?oUn88B4IrttkJkT3jc8zIFdPNtSumLohBG03+Sn7UViJH0NxucCh+ApsiSuo?=
 =?us-ascii?Q?gjox8D41nzTkKvsof+xJ/d2RlKmqqEFlpLwV/3VWLe++1OMEFjhQAchCWLkx?=
 =?us-ascii?Q?4nG5f1NzztNgVNiGCiazpE2L/PwW63k0lVv72YdleMVPGLMDvTL/YfgAANXz?=
 =?us-ascii?Q?OiJzUK42Px82YGIyz0IxkW541OFKCg2U9EY32NOanswdC2EWBvd9fLJGeihx?=
 =?us-ascii?Q?cbFB0i3QCEfnbI7eHFDCfYChCB9PNZipPD/gC1xZWi1Qvp+kc/qGrwdJxaHw?=
 =?us-ascii?Q?YSWeQ3okiNZqqlj+jtIOK8/DaSdPlhDQgcYfI98pw5xykMmPdib4ffXY+lnb?=
 =?us-ascii?Q?MZQuV0FuhQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZpzH/vUfozqg4Qs/gCw4vt/yObY2RYAIM33f0RnEfdEBLhXYCvUMR5VF5vdOIFTN1BTkpoutVtop/LSZD+lZEXpWqRqw6404INGt99WEr9dRIKVQE3laqUF0Bt7mYjScPfDnt2H/tNHEIPq3xdynsW4w+N/nz2yortfTM9SImclD+9F4kVa6gy6PMYRoD9amUoLx7Bjy+oQA7jcWG3skdOY4MaCMEoIncoqnBOnaegBZR6T/VyZcB655eQzu/q/Eobiv6grj8V9dTAVNRfoNk9kwWmkPKove7UQnYKB3WYM9Bgx/gFwB5h9X8K6dbH4zVr/63ZEMMsE6OBX0tq0HSw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46589428-28a6-4b59-6b38-08dec6afa46d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 05:18:01.3216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PpY5uOeePg37FMfO2Jdvf+c46eupwxpPBu9+IUAnA8VMhjEanDfrs6FgwNS3N8gbDX9TovNfSR96RVt9YL4Faw==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: E8389665E7E



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 02/20] drm/i915/cmtg: Set CMTG clock select
>=20
> Program the CMTG Clock Select register based on the transcoder used.
>=20
> v2:
> - Correct mask for PHY B. [Jani]
> - Use REG_FIELD_PREP() for enable value. [Dibin]
> - Extend cmtg clock select for xe3plpd. [Dibin]
>=20
> v3:
> - CMTG support removed for old platform.
>=20
> v4:
> - Optimize further with else-if. [Uma]
> - Correct CMTG_CLK_SEL_B_MASK. [Uma]
>=20
> v5:
> - Add transcoder-port compatibility check. [Dibin]

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 69103
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 22 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 11 ++++++++++
>  4 files changed, 36 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index a279f3dcd1ec..fbc8a4f2b9cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -197,3 +197,25 @@ bool intel_cmtg_is_allowed(const struct intel_crtc_s=
tate
> *crtc_state)
>=20
>  	return false;
>  }
> +
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 clk_sel_clr =3D 0;
> +	u32 clk_sel_set =3D 0;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_A) {
> +		clk_sel_clr =3D CMTG_CLK_SEL_A_MASK;
> +		clk_sel_set =3D CMTG_CLK_SELECT_PHYA_ENABLE;
> +	} else if (cpu_transcoder =3D=3D TRANSCODER_B) {
> +		clk_sel_clr =3D CMTG_CLK_SEL_B_MASK;
> +		clk_sel_set =3D CMTG_CLK_SELECT_PHYB_ENABLE;
> +	}
> +
> +	if (clk_sel_set)
> +		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ed540581738f..87092ce6d67b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state
> +*crtc_state);
>  void intel_cmtg_sanitize(struct intel_display *display);  bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 945a35578284..4a80b88d88fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -10,8 +10,10 @@
>=20
>  #define CMTG_CLK_SEL			_MMIO(0x46160)
>  #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
> +#define CMTG_CLK_SELECT_PHYA_ENABLE
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x4)
>  #define CMTG_CLK_SEL_A_DISABLED
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
>  #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
> +#define CMTG_CLK_SELECT_PHYB_ENABLE
> 	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0x6)
>  #define CMTG_CLK_SEL_B_DISABLED
> 	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
>=20
>  #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 24a51ab21b55..452062417ce9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_print.h>
>=20
>  #include "intel_alpm.h"
> +#include "intel_cmtg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_display_regs.h"
> @@ -3418,10 +3419,20 @@ void intel_mtl_pll_enable(struct intel_encoder
> *encoder,  void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state)  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
> +
> +	/*
> +	 * CMTG can be enabled only when the transcoder and port are
> compatible
> +	 * (transcoder A with port A, transcoder B with port B).
> +	 */
> +	if (HAS_LT_PHY(display) &&
> +	    ((crtc_state->cpu_transcoder =3D=3D TRANSCODER_A && encoder->port
> =3D=3D PORT_A) ||
> +	     (crtc_state->cpu_transcoder =3D=3D TRANSCODER_B && encoder->port
> =3D=3D PORT_B)))
> +		intel_cmtg_set_clk_select(crtc_state);
>  }
>=20
>  /*
> --
> 2.29.0

