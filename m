Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CinDggN1GnQqQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:44:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD743A6B7A
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D4010E2CD;
	Mon,  6 Apr 2026 19:44:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JjaNmCAC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7BB10E2CA;
 Mon,  6 Apr 2026 19:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775504643; x=1807040643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ji3rjc6QUp469x+OSB0qkrpzuOsqJmFJRLSIlTOcDdY=;
 b=JjaNmCACynfAsxANuhfbKEQJzNmwAykbbx4fOOAZhQtLwxe3McszrVJB
 Efcb4SPbWUw0folOujo+nhcdzyq+nNOez8K+720LYYhUEDIR4hXoHu7MQ
 0mt1OV9PZulaJYj7k2004sIDEWaIZQkp3FIcmy0/9+5LmRDT2VzPdktuz
 slq1Y3JVkdNSZNIGfB3HJSa5MwB38DBWwIwX24SFldKkSAHsNyYOxe7dB
 iu5aNGW4J5PNRKo2sHqpjEOTsX0ZFGE0t7Fj4Tz8RWWL3ZTKo+3MTYBgX
 2fZ6JgRF3tFrLlrFAhwZpQhhv3/E/GKsL3ixuASF/PPRJfei9WByxlOS2 A==;
X-CSE-ConnectionGUID: rvk++5ofQ0+NyXYLVF7IRA==
X-CSE-MsgGUID: xaYcXg4TStCkLb24kqTjHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76422375"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="76422375"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:44:02 -0700
X-CSE-ConnectionGUID: IWqr7dTtQw2RKhg5HZWRew==
X-CSE-MsgGUID: o1SIsGCnS72PG/p0WOfATQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="232013155"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:44:04 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:44:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 12:44:02 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.59) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:44:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fcCY9+S3EttSQOOPKhDhB4bjQSabIzRept8sDqCRyFXgVsb/R3IoD5H2HO+wGJwWnPYnIcwf6ivcLP4BDcjY27ZYlRN+4/W4dEZu2fcq2qdrnw2NmKQ9urvwknzUOWMH6cg/lWoasz8g9btxsoiAbGnz8oPS7HyvUe9ZeOpTfFlDitivl6qsAQVEeobFelWG49AZfQCIhT1Bi8P7vVV84GIJS3LiCPGVRg+90FXDqMBxsPGQQ+zD+aUPETErVuDJZ/PnL7SJ0GNzSu6BOsRFMkvr1WxvoVyEMvUHl18kJ56U2Bjupv8NpfQBYU3e23E5StAGrECGBCLfg16VETq9TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T7jid6cNf1/P4UxEdqoNUEx7unOf6sDkMQy2c23PW3I=;
 b=X2ZNz3fWvMVDMKtUcC81CkELDP5RfbRoXrzzyJOfRZDtU0Irxk+P/V421D0VnQleyzqNy5BTCB2+f1Pul2aLuHFAQy2KqEVwtDMizQdSygegOZMcTC56pu0Htuxw8cd82vR6P8IuZysIan1EBWXpYRtOxEBKVS8qQnHoUherrBJyyzbeV7dWA8wPx8DMI86OEtbYbqTec6TtCHDLCWFeQdLFsSGzMjK8wQyiomgL7Typ74dzXq3RvwGUvs+qKJvYjDT3auswKEZXfO9+hHV2hOMW0tp3MHyfyTF7dkONriYZd3L1s/ftcTHD0dbE0ITeq71F1eagY2x5QJGUMoY9UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ5PPF3A51834D3.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::821)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 6 Apr
 2026 19:44:00 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 19:43:59 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 05/12] drm/i915/cmtg: set transcoder mn for CMTG
Thread-Topic: [PATCH v3 05/12] drm/i915/cmtg: set transcoder mn for CMTG
Thread-Index: AQHcswMAHBDDNO6n3ESQMvWymUqO4bXSk8aA
Date: Mon, 6 Apr 2026 19:43:59 +0000
Message-ID: <DM4PR11MB6360AB7406491EF9AA51E4E1F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-6-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-6-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ5PPF3A51834D3:EE_
x-ms-office365-filtering-correlation-id: 8685cb54-6bc8-400c-00df-08de9414d91b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: /rgdceZRWVRWD0rYvaahul/WgxWkYTl4TZ54wHGJyDZtJybLYaEcAj08b1UZ3sxaz6es0A1sTWYqkobY6peA9fsO+Ms2BnNvaRe7HHigSwuu+ZVqpQhmtNR0Vraw1eH9sbuJv6NlFr2zQBD+hBjEi5u0MBrNHVY9kQGipFvFuLU+4nk0n30GZ0Yy2DK4tzPq2kdYq9tuM9CAbaA6v+V6hCtWiLSFwJi9MkEVOWaV8eWU1LEZf41uGzHFUD0n7mRtYsJWUoTpW5nzSgDn0QD7ncrrt4N95fuXJ6WxRzMuCg5DUkiL2BHgdQ54m1FHOUIGBZT/7ugS2q93gNOC9bqgDwogl3zlxf754HMfAWHXXZp354LObd5a/GNIuI4F8JG5jRDGb0VAr/uPqfGdkoidFQVo1ZqTNPhxcmjgPn5jzsO5k7iTmRh1Z9MaltkSOrcT7Nc59rns191N+iunBdK1OLz8B8qoqw6pANcWPFKu5jVskMHPeHMmeLBWiByB67oeZzDd/W7jQU7uKZf3on5R4Z1jk1tvHaS+aQQltwbuMEiIbhYTUqwBqHZEFJH/6wQRxcFh9ZfR9wtgCEsDbg+IptsmE+y0pFdqhVmKk4Rbb0jS41NR2FX4YjSifGwLCNwNLdhvwsvLAepanPeRRVLCedBxUIJvK/iPV8UA60d5976jygyAgGokQZatfR85B5oT8Eo/U1ALmajm6hwD6UdEReVZex5L4er5BlGNW7Zf9tQNykavlxQKPvOcXui3PKFDTZMLDjodlSXjTlda/mN3GjAXLIa6uygrh5fLAGw2XVs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Si0/720A/TjOHMfQNErB++665XPw3PfeNPBlG4Br1L7UmGS4NMgVpgXxkWFK?=
 =?us-ascii?Q?9mRuoPVAO3wZghJosP3t8QEjl/t0dSELP2XH5oWvDx9w/vpHfTZS4sWU1ATi?=
 =?us-ascii?Q?gEMwkTsw9jU/Ww8szKXClcmk3VLRbQqucL+Gn34NvtSoVeXIcCMLpMnadLJA?=
 =?us-ascii?Q?ZGll2c9Gs770LLFhKi76kBC9/npdJJcCWKxcMGWIUe6fcoKYsY262560biTg?=
 =?us-ascii?Q?wrIjCVykCV4V+oiT7vF0HnpT7jm7y3FoCNgF6TTOTbcRsDiUMrqPYLe7GgPW?=
 =?us-ascii?Q?xwLhADHbYSH7mQet1WWLgCdJvWnP/C86zmkeikJDVKg2idpz86d9qtVTEBlJ?=
 =?us-ascii?Q?a/XxJ2TfMSWsv+YskFa/1tGnJAlxIAY07WpMaJCtCwEnShVUw9wgGv0SkoJz?=
 =?us-ascii?Q?kLJBM4rb3WZbtVF4KKBfv8dBMhH+2e3Qwco/wpf3/06OWkx3Z9q7IcoepHHT?=
 =?us-ascii?Q?xe5E24AP+ZZcMjPlAQUb/HnzVfdGKKEFTVP+jBpd272QFgH5AxyDw3iSWY1z?=
 =?us-ascii?Q?3jqm8VHNDiO44P6hs2gAczUBlH2zHeK1ULi+ayHxol4HweaaEaZ1FRMpOYqa?=
 =?us-ascii?Q?ZLvF3zaDxpAIvTpscXYSbZiard/Il+GXeq/+WR2GjCYhTnPjuBa9oyNUQmAK?=
 =?us-ascii?Q?nxfBTKvaLN6lMeGj/qFaHcYuqhPtXbQZCJTzFHzOHubNbsCCyiuGnCqfMAmo?=
 =?us-ascii?Q?1/y4xHez3a95c4exMPMuEY+rab2BWJdreZPEKTbQu2rXGyKkBFdRsy/Z6uye?=
 =?us-ascii?Q?1LrNpTiSS/1OOi51X+jx0Fgk9IaWRFQ6uNQf5be/D9ndbI509poR5dGoqylR?=
 =?us-ascii?Q?0e/GlgMNkkCEhHoUmF6spn2/qawCd3zF0lEqO2zrrQMkltqfTo7vKiPnyTD8?=
 =?us-ascii?Q?LvZSSuZeg/Z2dw8Gm61IsKjcKkF+wHmBs5oPrrW/7W8s+8mXTrEX5aSHxi7A?=
 =?us-ascii?Q?XUz6nLOhuiPB92A9uCjZ5S+nbOjVmA4p/y+Z8UDrKGZvHUh061veW9DvupIJ?=
 =?us-ascii?Q?etNqfFzGCW0FKgN2Ibq8d7/DmEPqQyfeK/ZQJUYQ4zGU9npzlDZgppRkeCWk?=
 =?us-ascii?Q?KOHRJIo3XeKeaZEMJHMhd5diAcGEiRJaoL5a5P5daZRzFLuF+1BSLqhwJhxF?=
 =?us-ascii?Q?SD5Hqg9djcq9+DMQPv+cxhkhWvZDzhr8jkMROWY7fE8n05xgtexIkQHPc3E7?=
 =?us-ascii?Q?pp/eFAPbfzMrztu2/FPkBnAbP662r3LJJW0RFKAG1Rf3HZScAPkF9N/0JfMC?=
 =?us-ascii?Q?hhuv525dlPAZ16asTFdCWWfDkybOaxaXs+XM8kfweKDDxJag5D0J/bdvQBIY?=
 =?us-ascii?Q?ML2GeYv+oAroE7j6u9jEXtP0OvnPQ18mNzUppzv3uzmJJQ8UXvGl0ieNlnUP?=
 =?us-ascii?Q?HMUHSVpJ+6bKBuIaDjenodXJoNnermbqd4zk3NJQw1fGap/Xca0/NBm5Dw3u?=
 =?us-ascii?Q?DzCFW6A+BC1337iSkXu10PnnoONHuxrIgZB/XLwVFWsYqcgfsr2b1r1oxc43?=
 =?us-ascii?Q?nWMd6gV+qss4euy8E7usTglokpOF1mZ7fLwARhS4QSAa8g8V849v5BzvuuPz?=
 =?us-ascii?Q?E8PJxn+uwvoMdmHmAPWMUZF8MaPyTuieF+MM4SkSoU2B0JJQdKbbKJBxJOAe?=
 =?us-ascii?Q?rt/Cen433YBkBbuaab8QvaJAl1JCkGXKXun1KpBX619IQI2PxEWaF1lohB8L?=
 =?us-ascii?Q?aBAcVr5O1XOcPiRq89SXBYTEMFxTy/fd8IZjfQbdpH+8/MJmek/O2e1ivFLB?=
 =?us-ascii?Q?/2hOWPNQDQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rDt74C+/Ufaa0RXq80iPuk3V3zVap/XvB39Sqpuzu0kfbImZxuWojwNdU7E5BUGqolmt6dtex/EPNIXHdRj2MZ67hjX/kouFI6fSStata3lvX1jUAcyLNeAqCUfczIyG3ZkpWwGgYPi5jB/Y7vEyxCSZyDaO9xKJ5q2Ki3s1g3TI/pm83h/tpJbgv5+kAJMbTXe7M7GJ1qPlhGuF6sZz5hl8WNLiLcooFeJyifR3aUyHCM9R0FCU4jfvWNK94D16KMN53OydO4vHCa6ohWlKBxvW4OYbnDKnP0543IF0lczEdD80Ji0vRpZwLFDtOBCf/A5w45cLYyxguAH557OLbw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8685cb54-6bc8-400c-00df-08de9414d91b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 19:43:59.5243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dHWdwdjAGhnLghsaCgKU6PWAroHX6FlbEG8kFM6gSDdeOCsVhzaAxwleDAkiOOPVBtaHmLdp+Rm5JX0UYoCLYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF3A51834D3
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 1FD743A6B7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 05/12] drm/i915/cmtg: set transcoder mn for CMTG
>=20
> Program CMTG link M/N.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c      | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h      |  1 +
>  drivers/gpu/drm/i915/display/intel_cmtg_regs.h |  3 +++
>  drivers/gpu/drm/i915/display/intel_display.c   |  1 +
>  4 files changed, 18 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 038927b8721b..0d4a8550be24 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -302,3 +302,16 @@ void intel_cmtg_set_vrr_ctl(const struct intel_crtc_=
state
> *crtc_state)
>=20
>  	intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder),
> vrr_ctl);  }
> +
> +void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	const struct intel_link_m_n *m_n =3D &crtc_state->dp_m_n;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	intel_de_write(display, TRANS_LINKM1_CMTG(cpu_transcoder), m_n-
> >link_m);
> +	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder),
> +m_n->link_n); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index c92e3a62ff0d..6796eb727eef 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_stat=
e);  void
> intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lr=
r); diff --git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 3e94151e4daf..b91498ef5274 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -29,6 +29,9 @@
>=20
>  #define TRANS_SET_CTX_LATENCY_CMTG(trans)	_MMIO(0x6F07C +
> (trans) * 0x100)
>=20
> +#define TRANS_LINKM1_CMTG(trans)	_MMIO(0x6F040 + (trans) *
> 0x100)
> +#define TRANS_LINKN1_CMTG(trans)	_MMIO(0x6F044 + (trans) *
> 0x100)
> +
>  #define TRANS_VRR_CTL_CMTG(trans)	_MMIO(0x6F420 + (trans) *
> 0x100)
>  #define TRANS_VRR_VMAX_CMTG(trans)	_MMIO(0x6F424 + (trans) *
> 0x100)
>  #define TRANS_VRR_VMIN_CMTG(trans)	_MMIO(0x6F434 + (trans) *
> 0x100)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 82e4d0524d54..35f5fd02c815 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1636,6 +1636,7 @@ static void hsw_configure_cpu_transcoder(const stru=
ct
> intel_crtc_state *crtc_sta
>  		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
>  					       &crtc_state->dp_m2_n2);
>  	}

Leave a blank line

> +	intel_cmtg_set_m_n(crtc_state);

Drop blank line and keep them together.

Change Looks Good to me. With above fixed,
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

>  	intel_set_transcoder_timings(crtc_state);
>=20
> --
> 2.29.0

