Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAJCIF7jjmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:39:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFB713423A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5453010E7B4;
	Fri, 13 Feb 2026 08:39:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ECZdB/Wl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE2E10E7B1;
 Fri, 13 Feb 2026 08:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770971995; x=1802507995;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hk5Jb/JMGohlEbLitGV+hxsJUxEYkfI8uMjY+rxM70Q=;
 b=ECZdB/WlVPxDjzktqzCArnHZTmSLVehq1w8qyMlTvkjvLwiwszYHpmoc
 9DvHgZozQphDRNCb0zUPb4sPYMg1bX4k5FW+Ep669sX5Qf6+kahKggWdY
 NIQCCbttw5ihN4a6CqoEFMCDEBPFFde0X+rZ5ptZ6cCJtGqqCtosWYWdL
 8SXYeDFxzWZPBhyBnVvhIhmetSQ11O1Kvq7vfRvMkFnOkSxxQx5dU/C3X
 FnpGTGb4JA3CkWrmJ+cxfyZRQRcmOiygeUU60eLzjqWiQwXzUAH7WBPh/
 mk3Jf4oYeNVTdalS7cUuICax3n+k0HeyD8L//DRrNAu4M5DZ+/GymBDeu g==;
X-CSE-ConnectionGUID: NZxhKkqEQdy2hJx7mepjiA==
X-CSE-MsgGUID: qZgZOaoRTgy3vZl5OOdPyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72141819"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72141819"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:39:54 -0800
X-CSE-ConnectionGUID: BaD6VSLSQB6bMpqEPJSX+g==
X-CSE-MsgGUID: PcTYcI/QTbeJt6NxRG+3Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="217335863"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:39:54 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:39:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:39:53 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:39:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=neXRauwSAPONnZ728auJ5liP2qWHhsNT8oMmttowex6v7TdnUiXS8TpjRiK3s2trpUNxy8WFru4+w9Wa/sMuwF0KFNTbnLrcKoplX8gp6S+sdgKGKg0TMBfTVkgEXrhMaRkcpS4CWkqmT1Jckpx4Mz11AtjFHw9suGlc0CBNW3y2mwYbbOe1F1ZayTtDDxWxKEhbsza+a75Cmyn2u9rxeK/FztohSfvoPR0pWoRfyeglqvDYA8sd6Jhwd5BI/SsfjJmZ+JhzRm4PDSBVxFzJzkXBkO2a/EVaHZzd5XSPPA34faV9pkbPEtqb8K3ct555w/35y+R1WJ1fn5qDjfS4cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nPEWeFFxP+A0vxE1QrcWQCAy8rs2XW2vOPweNHjRP68=;
 b=yRtHxZAUTIjH/v83ClN7TblgmghdenF8vWe2YLmInthIa1EfM0gNoYelOmDogGQCjKyLo1v1fxsmfSr5IpgMStXmmibMI85Nx/NnAajOZzvicegoHnCuWvVonUVaMUhqXchw72hEDWbEIO7YHshm+mIrZvsRRrffI37nFXYskWeFylxmo1/eCWxcVDVs/o+bh6aUNG3+SNQ1Az8PuEEch5Jp0DJ5YJd871eM9DqsZgdSqN/0HMHGMFmtw7YXfX4bY4ESpsx2oX5+M07oL9Xm7PO2KBrw1n/PQk1SK7PRYNcrlGBEk3CNQMoNGJfSfe9Vm4t54QVmwH5mF8Rz/ojXJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB6399.namprd11.prod.outlook.com
 (2603:10b6:8:c8::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Fri, 13 Feb
 2026 08:39:51 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:39:51 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 05/15] drm/i915/display: convert W/As in intel_ddi.c to
 new framework
Thread-Topic: [PATCH v2 05/15] drm/i915/display: convert W/As in intel_ddi.c
 to new framework
Thread-Index: AQHcnFF02X3hiq7um0OwCI1Eb+whbrWAT8Vw
Date: Fri, 13 Feb 2026 08:39:51 +0000
Message-ID: <DM3PPF208195D8DB90F4000037CE0181D38E361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-6-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-6-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB6399:EE_
x-ms-office365-filtering-correlation-id: 15ea1dec-d859-410f-cd89-08de6adb7445
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?0zA5DErN9cOaznWrf5W7IUNYlFtekR4QZjHcB52dTrUbE+WTFHxZpNAsNcTd?=
 =?us-ascii?Q?n53W9JXeG89qRFEQ3Ctf950tgjkwLqct9DycvuQZQ55T0YFSC/RzeawM5+ZA?=
 =?us-ascii?Q?K+Z1h2Xy2Moff6CTfHkLHQ5zevnTtdPCCiUKbu6vvQ8knDuZS6gvZC+Dduqq?=
 =?us-ascii?Q?SqP7muqZxkPe9lNWAe3RJ0bE4hXTLRmLH6EaBQbz+3MqRT5rbYt2wJJ0cROg?=
 =?us-ascii?Q?2ga65xBiHAN6ZD7yudaHr/o48IqBQFL9NHogAONcQwt0HgyVn0VtP8FLN1Up?=
 =?us-ascii?Q?8qquW9fzUNIkGVAmQx+jaKW7MOBziAjncVAPAznG3AFAtBRAvdqkknO0IjeN?=
 =?us-ascii?Q?HDtxj7vhR0O9TYHajGVCQL9UpyZV4SOWu1lEBIkNZZHwWjv8dhmk1JbxJubo?=
 =?us-ascii?Q?sCSlLGAYXRsA9qkuw2CrBdYJP69419C74rAQ/MTOZ5QTTlI2n34Jjewo9H0y?=
 =?us-ascii?Q?NNlX9G9SP8we3cM5cVYkbrFgf/wnAHFUaDxMWrBmgprRJ1QNX0VYJaSzsCBl?=
 =?us-ascii?Q?QkTv1br+1m4N42PqsicdrMtwGDRIl7QQk0QGbWhvVSuxn1qSaTivqxZg7l3f?=
 =?us-ascii?Q?awF/cTBF4eZHxH6GDLjexaB4K1MQR6BjZPpKDT+jNP2exh6lfzmhUALrpB5r?=
 =?us-ascii?Q?DR0L5mgg0v12bZM4xyU/qBvGTphkn1tJcBBGS8rkN/OZkEtdcRYIA6JFH22v?=
 =?us-ascii?Q?mHvEzwrgkcc+EL9QcbevV+Fn9r3EuI2MZ2cp8BUApDaWvm+W2teNomkMRxPY?=
 =?us-ascii?Q?Jxfj7TB/hzli6ev9twvfTmDoVoBrQ4oQ+DTyBn3ti3CZKTMLbgJaTL4DJwdA?=
 =?us-ascii?Q?2JofQsztfiLPd7rIYqSVjboX1gIOHLr5usAyL2mx3fuutd5g1ZLrFid7djar?=
 =?us-ascii?Q?fgSq+LGbRR04Oc+zFJ45ccrnfpxzIenmS7g/MBIiWKdAhMLdAceOIa2zPOkI?=
 =?us-ascii?Q?ZZPtukitJdsc+D9duEuMI2J0Df/67WftXL/QQHdQpdGQIEzqccuhEKWBzgAW?=
 =?us-ascii?Q?CFigZE4SFsKvwF51yAd6PSnyzVn5t2K5iHNtchfZ53Gt0rUyZSmjGOdfdEWk?=
 =?us-ascii?Q?qH82UsEwUytpf354gf0lHpeeXL+NF8H1c3VLXHDmsCZ7nFgtf8rBr1n0Gdt8?=
 =?us-ascii?Q?6cprSicOuTwuUQHSq49PSdXSox3edyKhKrzfGwh6YKxhTEb5zs5e7tnBXsHf?=
 =?us-ascii?Q?JvThE//ycfsqX7iKdGJ5m/NHkIZqbj5hVOkvEZDtGphkavNMGlrgfA160Lql?=
 =?us-ascii?Q?EzGJZe6579fhPFfEnHtVwnTLiEKmm702wztsFVvtncFUF/b36hAyOOkOVKN/?=
 =?us-ascii?Q?X0Dz68lfWBTSUPhIO0ssiP7VSk0SSN4ydBOTsJUMuK9JeMdjO5LTKVws9Xaf?=
 =?us-ascii?Q?VFG+it/zP9nUiBAYosmihdEVaJP4Cv6K+gTmb8OUxbKm5G6LmosWekgIFgBY?=
 =?us-ascii?Q?dCNOm9C1SmC+Nqn/yyFDfIcyiuw3NuOmlQw3EZrLWNVLCm0rBCFlPXFAqTnI?=
 =?us-ascii?Q?PS/cSNg7q/l7Ycvjomqr4DpXyXF8czzzAq9u0MJTfzLi+pOKOTGjTqbpl6NN?=
 =?us-ascii?Q?pC/xaDx96yeGK1rYOja86bjcHMkbKrAZttTPnHSZSHjeg6Z2M2QArJ0fbOsM?=
 =?us-ascii?Q?gGCciPfgjn/F2DIc+ihrTn0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oVQOf1jkxjpE9ZVs5sEHx0sxpC9fzJ8XiXB4xdZfejtFQUGNMyvs11AW8mf+?=
 =?us-ascii?Q?N2kYeUdWrUexqP4K73NzVtIergs52MLhftYpM18IcVU7fGGkrRuL8jrAW3S0?=
 =?us-ascii?Q?GTZOeej3lETYqzeOGA5FWbvzyz3ns2iOlHHUcGz0vMAEnmrORarBGm2cSG1X?=
 =?us-ascii?Q?/flwhZpL1WNw3s3Mar1kxoiSjWQdY5DFULgE35GH5HNk3KIK7rNdY7847FER?=
 =?us-ascii?Q?IC7pJMih59kXsnsK8pXXXkiivj69cpwVke+adDKdzXnIn3I/as0Zt62xovM+?=
 =?us-ascii?Q?8HvloB9mgpDbIMmI3zwhBGF7zvx3j/Is/UaaNJPXefRitT3GPtrKeIKxGktN?=
 =?us-ascii?Q?wcbURv/WcwS67PAwKsE29EsshHxPhwbUkXcc61fRCjZtI+VFSvaCbTg617pt?=
 =?us-ascii?Q?kBQ4hakxs4uVwXpdPMkso0MibsUrGs3qryRiB0JqUeRDxpyJJwrNreN/CW09?=
 =?us-ascii?Q?oDSe5YSyq3UJqCYBIf++AjqLmZGxWW5qDIqBcTSx5kPAzlcPB4kMWR1HS2Ol?=
 =?us-ascii?Q?YOHIZIYMnN3yFwge7hDcDbzNB4usCNRq8/VJn0dQjVmAWbAo0XbF8WfbLxx9?=
 =?us-ascii?Q?1HG59IH8wkC4vPiwdyVcBnBlYiF3tc1JtxdLHjqgwgtI005ygWPAk04N6fs5?=
 =?us-ascii?Q?hhdIIiqqnYdqszHzACjzKp1mrX+99IOAI+tMPrejfNg3s/1+9Zdss7GjrmMk?=
 =?us-ascii?Q?vTmEffzZUeAlVYDGJFODYxwGOtvJE+mGsOdX0Y7WgROPfKHDZAtt//Xx6EUd?=
 =?us-ascii?Q?H7NJX1vZaFz6Hhx7jnmZke+NcT52XHcRRume8G1fpySOP7gIGt558qpPQDPg?=
 =?us-ascii?Q?aJtfKijaV9idC57frpfWk7Ip1pJINUBmm1wAycBECvdNUWzUYZGIn3BPx9un?=
 =?us-ascii?Q?ktnwrRfBN8KwT9RzDEu6DNElSmJErbGw1DyOqi+IIXcqnMXFN2XWYz71/tVK?=
 =?us-ascii?Q?3jeSoEBw0O6INs9TnBZRCdl2JE2Vxc39hOzikbL1zuSqgfnBk1enYODc5XXT?=
 =?us-ascii?Q?LKjjsSpWdBqnoef+oCb3BMOOHCKzhyvJZYAcWL9SS0J9ZYQnxaMaSldRZpJ9?=
 =?us-ascii?Q?vM/dkyklWshkslvfKxmZdoGpwmxNQbNFMeKQQoWs5gTwdu4QPQzns1cnpbgN?=
 =?us-ascii?Q?vJiiHicUfxLk6es4ADr0hPUm0d9ECaMkcQqUsQyDIOWzkszq5uSj7f5Ynkls?=
 =?us-ascii?Q?gCpJh1Y91iq3iqwaEnqClgxvJ59szo8owIpBH6EVmFbW3szvhB3V1i+XwrpD?=
 =?us-ascii?Q?e7v4fjKlnhdMRWcOqoJrot3NX2rOKyqACnBdFPZyL0J7P/OP0Mcquk/WadBu?=
 =?us-ascii?Q?zvEC8vZV0Ner2WNwz1896N7ZLNCBADafZuwmva3bxOY42gHe92kNxyjmMirt?=
 =?us-ascii?Q?KDptfMevLLNpqWP+xEFYD0DgFN0KM04SFkmjWvY8X65Lvy65dxM4IOOHw2Al?=
 =?us-ascii?Q?Zsueh4DNq4zYmlvGpKlNe7lkRHapbaqFVv7pOE/2ZB2Sn99q5jm+O1VJO2dc?=
 =?us-ascii?Q?dIf/y9WtQ7IzeYoRp1mnWvMiYo6uAMqUVHnVGiBpW1IZxpae8IfhmLy/H8zE?=
 =?us-ascii?Q?/4j44Dp1XBAsGwnCfAHHvRIWWSsesS/RjrwdtJrLfpXVruh1M0H/yicZaKNH?=
 =?us-ascii?Q?YOfLhWRSV5JcWm50CpSoZSJC0SDQFAlIL/vIBBXBFVLzHoTYhUJGCN6Qlt+x?=
 =?us-ascii?Q?gAyPU2juMkCYAv2UnpMIfnzKmFmKo7AVvkWHuE28bHw4UJ5w8Zboem+SLm7O?=
 =?us-ascii?Q?jfF/kgdQlQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ea1dec-d859-410f-cd89-08de6adb7445
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:39:51.3978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5p5bNWXtBq0fRVLiGNfYa9TLd9RqpNj3aYewMnildt5qp/3Q11bTj/4Q40pu1E54PSIIbngDU3DVhdROycx+pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6399
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
X-Rspamd-Queue-Id: DFFB713423A
X-Rspamd-Action: no action

> Subject: [PATCH v2 05/15] drm/i915/display: convert W/As in intel_ddi.c t=
o
> new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.

*intel_display_wa.c
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c        | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 3 +++
> drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
>  3 files changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 94ae583e907f..c96438245b39 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -52,6 +52,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dp.h"
> @@ -1401,8 +1402,7 @@ static void tgl_dkl_phy_set_signal_levels(struct
> intel_encoder *encoder,
>  		int level;
>=20
>  		/* Wa_16011342517:adl-p */
> -		if (display->platform.alderlake_p &&
> -		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
> +		if (intel_display_wa(display, 16011342517)) {
>  			if ((intel_encoder_is_hdmi(encoder) &&
>  			     crtc_state->port_clock =3D=3D 594000) ||
>  			     (intel_encoder_is_dp(encoder) && diff --git
> a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 8473cb25c92e..e2bbc3a90eca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -99,6 +99,9 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  		return DISPLAY_VER(display) =3D=3D 20;
>  	case INTEL_DISPLAY_WA_15018326506:
>  		return display->platform.battlemage;
> +	case INTEL_DISPLAY_WA_16011342517:
> +		return display->platform.alderlake_p &&
> +			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0);
>  	case INTEL_DISPLAY_WA_16023588340:
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 7e5f5a466e2a..b9c088025fd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -38,6 +38,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15013987218,
>  	INTEL_DISPLAY_WA_15018326506,
> +	INTEL_DISPLAY_WA_16011342517,
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_22010178259,
> --
> 2.51.0

