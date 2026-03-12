Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCc2CZc4smnlJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:52:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869BE26CE5C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC01410E953;
	Thu, 12 Mar 2026 03:52:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NUD6iBsN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 766FE10E950;
 Thu, 12 Mar 2026 03:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773287572; x=1804823572;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eDkQAXK1C5UTfQgeZXpSm33Opi1/OBD5HjjJtfOO+Qs=;
 b=NUD6iBsNem6/i3gWavPK8i/W64VOpDJZpkwEs8zJymTJhXryXFBXNMqO
 8+GcHuwo6LmSsvjLLb2yh6zEXsvS0l2zFqUQsrYzTTNHCWhjM+thQpsBM
 7AMSbASYwAzStczDPu5N5zTGRM1G1FrD3eU4ELJ2CAJR+uA1shEl84ZZT
 9oYIAP1YlsVkBzzU4FvzcoXkaJET9S8COo3fBTGpZZgR4XL72ywuVqoSX
 jyANZgkB6amQpwitXRZWxiIhUyOOJGn9TgroXFjyqOrxrs0SvPp8uwzIH
 iEjFYs2ECl4XeRLs/osaxBY/Rn3aOy+MSqYG20y+MwQjxwkhJa2KqyUJ8 Q==;
X-CSE-ConnectionGUID: CE62nN0BQAWk/U7UQeOYPQ==
X-CSE-MsgGUID: nxk9DWkeSsaCtIDnPFDpbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85457091"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85457091"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:52:51 -0700
X-CSE-ConnectionGUID: 3EWleOHzSnu9fMzblMlA0g==
X-CSE-MsgGUID: N61cddHgQviDQrg2Io2L2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="224825976"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:52:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:52:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:52:50 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.17) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:52:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MIH9UHbEthB+Mz8ExPD5uSrdAl9kyAjT56wbKRMi5WMHdURg4C/Dm/lHcy0SdFL6ODgxniYkVJiZ+SJ1b+x63RtUk69DpfeLe+yfCVOKYS1W2AHWaPmhery0LhVqUBLOee6SCPGfLVdOL9WGtgEmyEWyn+N3sRCD8lP/yDVR6FnL8/HS1G5JgtAHwcjXl5jM+nz36/tcR0zZBNSuWvAV7VlWt8yE2zBbFnDwWJY1SdovsL42Ca15ZxPBrdn+4lGd4i3No0wNWbj2J7DKIA1o4dl2yinUNzk0+uVLQzA+ZFPebOiQVPyPvOBvBkZQmx6ibeLkU3UM8f8oGATESk1LNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+NrXhURT1Pf0imFUci57WtYMmyRuAAsr2jvoFm5jV4A=;
 b=lUTN4kyU2C3/CnCdjS0IuvOGTpajbJrNNtTucIrkBo6IqTxvPBhFY22harLFxR/8WOrCFmSmeN0zpWTjb9xz9RLS+8sTA2ZLnawOhBE+akJao/S+2ui7kzRpxwirEUQqppT5QhMLHuGyRqGCYBrm6F7qY8MZBvArKcAdxYgZ31tXWO0DgzTGXQoDAqnSRz6RNiViG1Xa00I7o1sNN1/sjwNkgEN9z+5Og2lXbayYXgJBMOXld1Y9VplBHCkj6QJM+91rjqcU5MNQOTGA39px5CRh3169EG4pR1MhM1dZpuUSj3wp5r0cE8NyOm+vg7fongGUOr5gLEdfTe4DQIPUdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4911.namprd11.prod.outlook.com
 (2603:10b6:a03:2ad::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 03:52:41 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:52:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 1/5] drm/i915: move i915 specific bo implementation to i915
Thread-Topic: [PATCH 1/5] drm/i915: move i915 specific bo implementation to
 i915
Thread-Index: AQHcsWIEHxfb3/FhK0ulvz8xjIXuHLWqP8dQgAAEsAA=
Date: Thu, 12 Mar 2026 03:52:41 +0000
Message-ID: <DM3PPF208195D8DA93C4A539032CE6DED0EE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1773238670.git.jani.nikula@intel.com>
 <e159166d623899996a51a577365ca7ab9b1a0974.1773238670.git.jani.nikula@intel.com>
 <DM3PPF208195D8D84985796CAFF462B933DE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D84985796CAFF462B933DE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4911:EE_
x-ms-office365-filtering-correlation-id: 2f5da49c-f854-4e70-bdaa-08de7feacfcb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|56012099003|18002099003|22082099003|7053199007;
x-microsoft-antispam-message-info: 4ZFve0VAP8jN05iFKwz2Ho+unBN/EzTDQgwp1gm10BKqohhjC4ibkLI8/+YmhccuyE2VeZX3nM2C7Nz/v7esB/4G62Z8DVdbH/gdrXKbtMFeb+bCDrqOrdz9NGSlFrk0piQtG8Dq9ixDe8bTKi2HrPoXWIB6vgoBtVua8onGrPkqIcd62XDBt7eWk8UFetILXo29IMHnsWXR6UqS9THmlRuawdbAcB3PVIuCX9bu2U/hn//SN8LQay52OStTYTT6QixeTw+Z/3y0xQ0s0qbsJvVj4fxYZpU8OK64seH3gH1jS1xY8BTZYJz62/2nf4fTDn8xrpBiscd2ae6CB3ASpLh7VPQ51JOE5cH+5NSSSvWpWVKMEeBA9kqOYCiwhAL9D4rnQsZ/S0VLxIEFRxb3I9OdE+NYTRIKYH2i/wXcjKQfx0UurmgY2dgFf023UlC9JEahYFk/BAo3Ey2GhkP/OWfEOymaoN0uwpDoTfPp+XHgAuQKLo8YU+xBTogRyGEAW8XnlZHdw+C1WpMBHbgSYHB5nXa1IXsZ0FLMPmteIn9fGVLknTN8E43zrE/GXluOsfW7qLc0fZx1mcKYf6MKm1k6v9vXW2OkC/9Eknln6zi+4thrfBeMP0Q1Nt0TZilvvlQoc2QelVSTdJj6UOng0wjQ5HI3pUwF+PecouME463mixZkmylgsmIFD5vmM0fsCnEICMh7nMc3lu4IF8U8PaTdvRrAFy8H6ozey4zbuOq8drk5W3QD1eRDoLEJwPGUcM0ORmiILvfVzSTvwqQNNAJenevkuGd/i8DOV9ytu8k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OW4A8KEHtUAgx3ORDOAxhlyrt/yvm1QlxkcRFaV8BM4RSsoPHdDvjiXC48IE?=
 =?us-ascii?Q?VmMaDPw1kFLWeSKDoZscWTtDngw7RPXhaXW4fGPP+RGv7VpBrCeoVEgwj4wl?=
 =?us-ascii?Q?wxqNbHb8W7ONkq91uyYsjlHtUBjk8YyVVmlCQYTtpGfeuxo8ZLozlZ2xJ9YP?=
 =?us-ascii?Q?JgUK7bI3iS/G1Wqher+AmPqJDHBpWR+PKzg1bNy+VzK4HKogLFdmspM9pOLV?=
 =?us-ascii?Q?fdSAEmcFDTy6mptOs83Ie4qVUfkV/HWkJEzpC6OoSBSeu7Mbdoj6wHnoH+QV?=
 =?us-ascii?Q?QoN8L3U/UMcYrECd+JQgZ3+ZmW14Tjd4Yp0RjpOtUOy07hoDSRb26IfrCRqo?=
 =?us-ascii?Q?b5eMk8Zp4Zmr5jrO4riuytiOW3r6cQs0vV73+VOq4Z3cdck8nkYdQ9ywAdTo?=
 =?us-ascii?Q?p+lfPLkepnhs6PCALuHh60l3n2WxeAmY5ptA33ctjqTodslFsH7ARmI1ihXg?=
 =?us-ascii?Q?1isxaXBqu+1gsdiqA7hdQONl0Klw03iyj94rvQ+6SpTv3nMe8lyWBJ6rUg1R?=
 =?us-ascii?Q?TQilptpUD1jwpIuyKFV+ONN16qTwbbs48aQax6KHUFvlry7SiNH8CbiAhz61?=
 =?us-ascii?Q?DtHSAbSyyuGsv+LzIu15q/IDsICJ/6OTvaVx8dyGtzJmZkaExdXaPtnRhGnb?=
 =?us-ascii?Q?3ET+uYmtYn/qN6l7Oc/olId1E2oKFDKt6rqL76tVsj1sHZfttJiZbgIx2Sxo?=
 =?us-ascii?Q?ek4kOWj6qChq53O3HxOchIHx8AAJHAtWBkILR9SXNZzlxavSgnc/yrilzCXV?=
 =?us-ascii?Q?iuHkMeL4J/0+Z3hDXdELrxGvqiJTlShVsHTI8ChzCT5Hk9FTe2U19CuHtIJP?=
 =?us-ascii?Q?h+lCMQVQ3pNTD5NuBYlHkjF3UmmyTstDZrBvtVwbqQ42+rTbShOXVDEIbVyD?=
 =?us-ascii?Q?9ykRxny4D6k7SMN3+gh9SDxB1cZPc49Zhe6vT5vtxNpDwndfoLmTdmMRBMBO?=
 =?us-ascii?Q?z7kOK04UwmrJXJXNUquJNK78yDh+unk1M1uWQXxtVDqjvNa5V8ZEc+xRE2nF?=
 =?us-ascii?Q?Q72wC5WsXoMjZCu9wGS2IEVtyjWKrgDPkEz0/2zcpfdQO6c1tGBN3gz6FPvi?=
 =?us-ascii?Q?OgqZbIZstB2jajbuRKTM1VxopWsITSNMoraU99sbgBM7XbCgImRofSIhPnDB?=
 =?us-ascii?Q?iDP/y9fhUwjZyGcMVDlZCR/Y/W/JQCrT/c2KUoXL35v2MEIgcwM6Ibyhyz17?=
 =?us-ascii?Q?tjUEL6WU2I8af9Yt7RJC8sP+QvKnK8kdrlgLPevWucAdBYX8AYakdb7zzlCF?=
 =?us-ascii?Q?rLfFudR0bO3GU3CUB3pzz28pn7z+vwE/YynCzP/TjzEJ/BXjLvt7eeFZHA13?=
 =?us-ascii?Q?nDHYW4vi7OEGpiZOMRR45Whr0i911D6xaZT8n2lvim0YpZfbtLmf+tU+IMMe?=
 =?us-ascii?Q?WbUgMhzZhrLzXQ3jFDDdvhZLW6gXhXfP3ggRL9HOZsg2SGVu3t3VMEC8D5WV?=
 =?us-ascii?Q?6ngqLyTEhjZm3TO5+w+evaDRmcO5HcgyzWM4wZsORC5rvwfjbaWcpy8/fo5h?=
 =?us-ascii?Q?I9jI26LCwF+zCrXQQwP+mee9IswnjASde7yjaK1Kqs/Cjto2eaeQINFYXTLC?=
 =?us-ascii?Q?sYCyyTnwJkBByKrIgsUabnkA+ihUcK8xt9aH95F0xGvlGZAerqb99t5Atd0/?=
 =?us-ascii?Q?5DTVTPUyGS5D9xTFGAd4K/b8M0mW8mCFpBrwB3ILnsxr+ifRs2PvvCn4eUvs?=
 =?us-ascii?Q?6zYduu7oTngmuS9pN1lp8oaIZT4a0tupGa0PizivzSvurE7N195/1iVlIOYL?=
 =?us-ascii?Q?zdIKQH+pEA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WMLL2x5/bvne3EUmTjzTLXFdhvHRQ5t/u3kQ98NTzWQIgtKY3R7TihI1mrltguYeKyeZCR/SxYFKLwPnEPkNxrfIqfLaKh7+0Pbv441mCo88qKIOofIPXUQm8PI7vd+0gjyiE99j3vpeFolRb1so0dFwbxiiPBraF1TqbOcMHqXI4TQbbkh0kGQhifMm+u9wyE1AvLfy9ZYa0r5Jv8+eHXCdo4OaQSHYEjqSbzjxgPLejWNW04tLpt/Xe0wo86t/Mf1okNLuLp0X0ORlMd2ohA6zgH/dRBReijdZw/QJJKP+78wuL16lHAUqxsow9yNecJ68+FdY+N5kcQ9i5REyGw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f5da49c-f854-4e70-bdaa-08de7feacfcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:52:41.8269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dn6geYoi6/bedfJWX240SzD1Me8PKDGpvi0zuVWNA0D4omLOwIvWhN0+wGTtdETVpzOsgpWzPWd5pCP1g1TTwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4911
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 869BE26CE5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Kandpal, Suraj
> Sent: Thursday, March 12, 2026 9:09 AM
> To: 'Jani Nikula' <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.or=
g;
> intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [PATCH 1/5] drm/i915: move i915 specific bo implementation t=
o
> i915
>=20
> > Subject: [PATCH 1/5] drm/i915: move i915 specific bo implementation to
> > i915
> >
> > The bo interface implementation is different for both i915 and xe.
> > Move the
> > i915 specific implementation from display to i915 core.
> >
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>=20
>=20


Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                          | 2 +-
> >  drivers/gpu/drm/i915/{display/intel_bo.c =3D> i915_bo.c} | 3 ++-
> >  2 files changed, 3 insertions(+), 2 deletions(-)  rename
> > drivers/gpu/drm/i915/{display/intel_bo.c =3D> i915_bo.c} (97%)
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile
> > b/drivers/gpu/drm/i915/Makefile index 7e9d9b666511..52a82608b8b1
> > 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -76,6 +76,7 @@ i915-$(CONFIG_PERF_EVENTS) +=3D \
> >
> >  # core display adaptation
> >  i915-y +=3D \
> > +	i915_bo.o \
> >  	i915_display_pc8.o \
> >  	i915_dpt.o \
> >  	i915_dsb_buffer.o \
> > @@ -239,7 +240,6 @@ i915-y +=3D \
> >  	display/intel_atomic.o \
> >  	display/intel_audio.o \
> >  	display/intel_bios.o \
> > -	display/intel_bo.o \
> >  	display/intel_bw.o \
> >  	display/intel_casf.o \
> >  	display/intel_cdclk.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_bo.c
> > b/drivers/gpu/drm/i915/i915_bo.c similarity index 97% rename from
> > drivers/gpu/drm/i915/display/intel_bo.c
> > rename to drivers/gpu/drm/i915/i915_bo.c index
> > 2b6eaec351d8..21a4533ba341 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bo.c
> > +++ b/drivers/gpu/drm/i915/i915_bo.c
> > @@ -3,12 +3,13 @@
> >
> >  #include <drm/drm_panic.h>
> >
> > +#include "display/intel_bo.h"
> > +
> >  #include "gem/i915_gem_mman.h"
> >  #include "gem/i915_gem_object.h"
> >  #include "gem/i915_gem_object_frontbuffer.h"
> >  #include "pxp/intel_pxp.h"
> >  #include "i915_debugfs.h"
> > -#include "intel_bo.h"
> >
> >  bool intel_bo_is_tiled(struct drm_gem_object *obj)  {
> > --
> > 2.47.3

