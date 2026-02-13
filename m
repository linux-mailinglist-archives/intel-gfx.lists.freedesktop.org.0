Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NE1BIbijmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:36:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B39F1341ED
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313E910E2F0;
	Fri, 13 Feb 2026 08:36:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dOe7vjug";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CECB10E2F0;
 Fri, 13 Feb 2026 08:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770971778; x=1802507778;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B+ERI2ckabMj+Q/862XJDUYlH3ZUEtDPJZNHyHY9l0s=;
 b=dOe7vjugeOtLYbbcOUtv9FIfZdHKa11rJoAiZkD28YVi5KB2cOP31tsj
 WXYV5+xbpj+x+8nBZ0LXKcA3LNwgYos7CqeBUmuOMRtcLLFQAdNVA5HUV
 s94nhNIbO/wjmnYHI4NVuks+Ich7oCNxJpXWgVWyDOrK1D3VV4cNi8wE0
 ubqO8HV7PIP94xYSPhdHmEuDPOT0OJGkU6mpVMCCXorDI/latIKGsmhrg
 QxTQxM83LMihoQHn83QZgfQ4mrWCoGP7VBfF3UeszzJltqscPphYJEF5U
 XuOxU2Y0jWJh9WD1KxdShZ0z4iSgLBElu6o4wCIiT+qde2rCcbTxLPMz/ g==;
X-CSE-ConnectionGUID: SFrtwC84RfydXBTRhlIG1Q==
X-CSE-MsgGUID: ozw2Zf6uRiO2H9vmyorOFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72141486"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72141486"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:36:17 -0800
X-CSE-ConnectionGUID: YuECZMCzS+6O+uPQ1H5D9Q==
X-CSE-MsgGUID: acyZ/kiYQSKdBFVHJJYrDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="217335185"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:36:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:36:16 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:36:16 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:36:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X7pbx5UlNYZSj6wldziGfc5vuY/lHD0r4DrnH6cPjbXPW5OEOxVQAvRzYsIal2SP0iI153XW5w7gEUyrmNtl0N3War3HsaJE0qlKNQGLV9laTW13SlOCW+HcyPx4mNO9ejaly2ooKXqQLBdkms6roEGzcjxDD8RG2b2YyHoZMfJt+xTk19c/cHWj9ggkwGAz6BtumpsTdmKgRGDz/FTHU0GKV91T1hRsuEHL2MCnKmq7Hypjc89D2lCzzEsbaxow2Cj9ALQSOOEPjeDUMwAVbFAG09uEIdpPS4aCODMdnmbikwPSgAkARXa69ZbkMw93UDMeXflhswQ3PHzx/5uygQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=08ipXBZLV+kOq1j2t46SxtmHKE+IRnxwOblgA8ezd38=;
 b=Q/P456d1LjLD3n9e3q70IjGqFkYbUYb9dSTtdcQ2e9R9sXDt85oDNXhHidKB5UFBHhVNOwyUonSfQoQjiuO8dGuZwjkEkfdK9DlL4TL+U57WC9qooT+Yw6zZR5pBBrKOWqfN2ttiOuUCeQDlJlkbfjHaIZ7XjysvvSl4+CUtd80cEkEu+nCovXYTqCesAUvo+ALyPQlEog1avcNeSsaAG36g5CqF/v4nHMeEOuVgN7COnzKwdcj7HBzGMhlt9OQSsj1E+vinSUeO3h1N1zdyFVqg/y6lkOtATvpf7zN+YdtzyNtZEdmkhUrKUnQaazDQvelFi76593aXNixdAGpUMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ5PPF183C9380E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::815) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:36:12 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:36:12 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 08/15] drm/i915/display: convert W/As in intel_dp_mst.c
 to new framework
Thread-Topic: [PATCH v2 08/15] drm/i915/display: convert W/As in
 intel_dp_mst.c to new framework
Thread-Index: AQHcnFF1V+SYZKkvqU+RgA+ppsKzc7WATsng
Date: Fri, 13 Feb 2026 08:36:12 +0000
Message-ID: <DM3PPF208195D8D7856098B07DAD9EE2859E361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-9-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-9-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ5PPF183C9380E:EE_
x-ms-office365-filtering-correlation-id: 7cd1616a-d8eb-4d8c-3102-08de6adaf1c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?t8VZPkvxTw8FBcuLTr7AlaF0OQ/TOwOKe7UfLbUSdJSq1K2HtR7kpMS8VaZe?=
 =?us-ascii?Q?gJY9CKu0K7t5QqOf4RaufcXM/VUHWTejYo+KMMCdYIXUIIxmQapApXlKEvBa?=
 =?us-ascii?Q?bUOVmoPFgEHEiU9wiHTnza00SpS/fq4y6NShJxU7rG1BPerT5vG9RBNGN7LM?=
 =?us-ascii?Q?WSfpIrE7m+xcwxnJBGjgC7SY2eYYWpyoR70YteSj3utM9+IT1HU8XrBsXREM?=
 =?us-ascii?Q?4RqmImGgU1MdVKt9EQwLWk4LYXLz56ISV+aVQXfkChljJbQNgm46D3wL4der?=
 =?us-ascii?Q?I0FcncuoJFIfwj+WDGnC3lqzkm4oTCedqm2SfIhNIRgM35xG9qhAdk2CeRHN?=
 =?us-ascii?Q?02tZZjJcRFKTJvHD3+8XkDHZlX1s4i5y5+16FjpHrnCa3d4Iaj8cnMiJNMRy?=
 =?us-ascii?Q?mgXBgbR3KpV8VyclVwjyNuSSvqMa7cpagy5TTVztzrHOXn2pbNSFzSR8ERZe?=
 =?us-ascii?Q?n8B3TAfs72NxSF34FHf2Pnz8lZhueyRvPdRF+nXwWeLJlurUFMiSIlxH06jo?=
 =?us-ascii?Q?u/81t7CPxDRuV2xkU/UW2wumd6MZRHJ6sSiFivvPj4A+gvhvNpsi6BwKfrlp?=
 =?us-ascii?Q?oQD+JuHwL9bUXNjCQjv88BvVFyp67sQMSliEop9DOx/Ift320r67TO9tMa+m?=
 =?us-ascii?Q?UQFOM3bBA/Txax2wPpvV5ueMih8Faer3veGIl55ZlsFK4Qh5v8Ycj8geLNsZ?=
 =?us-ascii?Q?KKYyGxFHWEGqeEpc96lWVq9O9a5yeF/CePL5Buh6CNaAFcdU0bOWb9zkDjbk?=
 =?us-ascii?Q?pdM6UNQlF0DEnGQfrX2eyPqegkrkqfoTftHUe/syED2piHlbL4kmFfC+Whs3?=
 =?us-ascii?Q?86PuDoSr4UohypxB7CpuGcM26im/sUIphNmaS1R7ycaND/wCbBa2vEmFsIHI?=
 =?us-ascii?Q?EM74KxzO1sQhPnuOCyppytTaoVp7IbSQ6blOssaG2DpJdYZboFaUOFqSgBQo?=
 =?us-ascii?Q?qqSG/iW8zqJr++Qo/FmaSBU4hr38qFF1cPZOMMbk67XBzg/ViiG82gw6CXMp?=
 =?us-ascii?Q?qNnhI3HRlRCPVaoZDzwu/3D9Fqsboi4xLnAZ8zVBJEVAzTNBRPgwej835GdN?=
 =?us-ascii?Q?Y0ibBG2WvvyFlFQqyGm0Fcq9jOVbbvF5EY79IGeP8uE7DLtdmqcQi38X3H90?=
 =?us-ascii?Q?lMce29u3RDCl8Zj96/3D7q6sd5YCJmXN22bFtN2UjDO643gAHcycdKqSbJQD?=
 =?us-ascii?Q?1+2WS3YpkQOwegNt93nLSKvL9rDSAG9OQFurOV6my8SB1DDvHSLb4hHhx9f8?=
 =?us-ascii?Q?1C09BYrESkMahFe22aMXxMdyb0lq/ScmaoK2mOYG3pOsZsN50cBxWI+poU8H?=
 =?us-ascii?Q?iq+vE3ZGLt0fHx6Nx7n6M4eMgsfTjY511/VvVo/glMUdGDyTF3V1e6i6IsvF?=
 =?us-ascii?Q?DrPkLvbTTdmRmTIVaWIejUkS9/Rrjjybde8T6f3VOlPbeGFp5hm1VVeZptIC?=
 =?us-ascii?Q?5rHFT4bRqwxhzWNihBRjGG4plcjjfZqD0dJL6zlkQJZX69lu1bt7Zt/Kvme4?=
 =?us-ascii?Q?eFXhZOm701F574XVIFl7/+Xuzulvekg/sJdWlbaAEeLqzPS8mB6QYPpHWN0z?=
 =?us-ascii?Q?LHQFVvh5GnDHNDNUnYk+JUmK6OYD96SabDRRhFx5VZuz5Dq8TvawRDAHwU49?=
 =?us-ascii?Q?Mg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w/F18r4bvQJN+WsqET9dWlzdBA3H0yInwUzkCo7R6flw6Qtcd3twNGd/4EZt?=
 =?us-ascii?Q?msQOEEGZIE/zLSKudmqvTiOop9dzRgkwwG4xZoX1aaJIx/KLgMMgUeNvk/T4?=
 =?us-ascii?Q?8/Ui5rV/c7fhiCEESCvnPFqhQUu8czjTGjZQw/KxKjKcC2CM1Vo4qWQzESrS?=
 =?us-ascii?Q?tz0fanHx1YhKfu9XfbtmFaOLQzoMFkElb0AGCAsoL5HbOFtwOFe43fn5dPVP?=
 =?us-ascii?Q?DzXjkkBCkDfRGByb1gI+F2wbZvQwJ2EzieQTxPwM4kQBnelmCws3p6nL9vOV?=
 =?us-ascii?Q?Jhusp6LP1FteP5AP/JHSOmASyAE860VsKVxDvBC3Hsgv2ioJeoTVvXnjAJeK?=
 =?us-ascii?Q?dukENltUj8rs7TQ5JtCmG9kY79JC81LDhZcoDvqj2jYb17g4JrDfrAIZ3vlb?=
 =?us-ascii?Q?djkeZbMD3lz9tofkgFlYxZm3jhT94C7ggkeZnz40UH+pX1LzymjXi0sefNqN?=
 =?us-ascii?Q?l8EDhHo8UHBV0mI4rT0kNsCsT4lDDCP+SOYD8fAAUy42YLDiUxGp61ZLJVPY?=
 =?us-ascii?Q?tcAjj1+4KDIc1Vz2fqkYNN5E/h347CnXjfqKvfPvDh+r2ibpqmqBmkn3q3hw?=
 =?us-ascii?Q?+dp3RxuYb0jpIuqbml2DdTW/jLZjqn23mWYuc44Ai2G7mriTkFX+goBFEjaX?=
 =?us-ascii?Q?gX7A0d7rH5fWyZ3nUYGlNYXa58cgFe2hIRgNNZGmSZg3k4j3CTjK+j2Zlrjc?=
 =?us-ascii?Q?9InLSwX2stjDm+2B8Jg8bq5kpiVUIhUZ73VDOAyfmTl15nRf5tyIeXD2gO7V?=
 =?us-ascii?Q?HV+7stUGCXVfNiQ/pA3YcA8geW/Cr/o9mkXqDeqvvaDHJ0e6oRwpyWt3ODEw?=
 =?us-ascii?Q?yFa58y3z65+5p2qabSFLiFAPJcjjERcZGDT0uRrpcj1IwkrWTtN/ziYELEzq?=
 =?us-ascii?Q?TxVn6WP01XuHmuv1CIdqM9QUItTWTZ4xnXIIj5c51UczlIjpX/sYiv1dKuaJ?=
 =?us-ascii?Q?DP5WBRKBHWGrP/827VdArZZV/xdaGYTpfK3gbAFb7UMLkOu1OmlMJ+qunH1v?=
 =?us-ascii?Q?3KBxluvT1Yw7Rle0r/7mfUrR98ZUAu4vfCzPFjUj181ssxkAwrw0RpXLm4DV?=
 =?us-ascii?Q?qnRVblOAQwFhYQw6GdBdmY4yyKoFdnRl9Pbz1O2VHxXeYh8f8oFyMb71+SbS?=
 =?us-ascii?Q?+adqfoANy6S5tOhQyuqxYYQQoXb19qYwDqA6SuYGjP8T+5XhIVjKe35cQVN1?=
 =?us-ascii?Q?52JRUQIeaKTxqSDmgjd3tJrpWXnafbUBevqJRkIFstkJtRncYw9ykksJPvNf?=
 =?us-ascii?Q?NU596AriMoSPmOmlosdq3cpJ7SUZLxfSu7JPHD1BktmkdM7SgiNcfnIk1Br0?=
 =?us-ascii?Q?ocV8G8WigXlbAOVs6fxWcQ6PQj+s4wbl+87pl03y6dBrJ19jTqjb9z/JjX4T?=
 =?us-ascii?Q?/cQHwg2jDyRJhd+ezKBBJ7+0JNPzNnpktlsl9tKpr3xs3pNTX7TBQ3gHTnVY?=
 =?us-ascii?Q?BIo4DKdUtrlwEzEt/hZxd+arF7UHvDhqRyi4zuox2UmRMUtjmd3RZuC31eAS?=
 =?us-ascii?Q?Dqm11kdsZCzm5WAvaUMBZU6TQKrYqI2DizfrHVeTaxJ7KjSoccsXuR/tQuYB?=
 =?us-ascii?Q?xcYg0aVuMMgmxTQjn65Fi6sHSMAiXt5wtaitwJfqAyEJKOuB4ajirV2Zv6I8?=
 =?us-ascii?Q?bBfB47BeOeO/vi11spv3xOS3Q0YIM46vuSPneN8d0RAUvu8ZuJ6ulCEWb6xL?=
 =?us-ascii?Q?+7MGCaF89pmAjisMSPtU8HSnhuxdD3Ykan1mgijUL/Wam78+No1lSrHCqz2o?=
 =?us-ascii?Q?HUAqQAFZgA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cd1616a-d8eb-4d8c-3102-08de6adaf1c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:36:12.4122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pSWAXRf9vMt6koysDr8ANJIHEwmXii+2TDYeXtnSPVtUkHqZjWWISZH3nCB3bg7RlELLMim2mEJb+IVQcjqVWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF183C9380E
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5B39F1341ED
X-Rspamd-Action: no action

> Subject: [PATCH v2 08/15] drm/i915/display: convert W/As in intel_dp_mst.=
c
> to new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.
>=20

*intel_display_wa.c
With that fixed,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
> drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c     | 3 ++-
>  3 files changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index b45212708110..798e77200751 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -94,6 +94,8 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  	case INTEL_DISPLAY_WA_14011765242:
>  		return display->platform.alderlake_s &&
>  			IS_DISPLAY_STEP(display, STEP_A0, STEP_A2);
> +	case INTEL_DISPLAY_WA_14014143976:
> +		return IS_DISPLAY_STEP(display, STEP_E0, STEP_FOREVER);
>  	case INTEL_DISPLAY_WA_14020863754:
>  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
>  			DISPLAY_VERx100(display) =3D=3D 2000 ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 923cb917e727..2e5ce21e0455 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -36,6 +36,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_14011503117,
>  	INTEL_DISPLAY_WA_14011508470,
>  	INTEL_DISPLAY_WA_14011765242,
> +	INTEL_DISPLAY_WA_14014143976,
>  	INTEL_DISPLAY_WA_14020863754,
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15013987218,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 29713075e413..e338dd12b39e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -43,6 +43,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dp.h"
>  #include "intel_dp_hdcp.h"
>  #include "intel_dp_link_training.h"
> @@ -1274,7 +1275,7 @@ static void enable_bs_jitter_was(const struct
> intel_crtc_state *crtc_state)
>  		set |=3D DP_MST_FEC_BS_JITTER_WA(crtc_state-
> >cpu_transcoder);
>=20
>  	/* Wa_14014143976:adlp */
> -	if (IS_DISPLAY_STEP(display, STEP_E0, STEP_FOREVER)) {
> +	if (intel_display_wa(display, 14014143976)) {
>  		if (intel_dp_is_uhbr(crtc_state))
>  			set |=3D DP_MST_SHORT_HBLANK_WA(crtc_state-
> >cpu_transcoder);
>  		else if (crtc_state->fec_enable)
> --
> 2.51.0

