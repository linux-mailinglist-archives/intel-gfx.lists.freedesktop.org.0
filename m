Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DNtK9SOlmnThQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:17:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1258C15BFF3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7210B10E674;
	Thu, 19 Feb 2026 04:17:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kr+oVm2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A6A10E0F0;
 Thu, 19 Feb 2026 04:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771474640; x=1803010640;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CYOTnwpJ61LbnnILKGl6mi7RSJTlaFMNk9eBnOsi/yE=;
 b=kr+oVm2bfZa20o/qrS2U+FjZTY6Zm1R7PfsLo2/kiGFoZwAsWAR2nmQz
 ulFHNnNaJBfHm3Qm9ZW7dC3O1LyK8FbeIycjdoQVSz8p6Fv1cvb+AaSi7
 eTl9EXPtzYCMROU3ge5LnlrhDyYeihGJ63lvdCi6Q9yM4sMQc8hZLKMjD
 gr8W2Z8fZaZkhvZGLRMgIKdXA38VOdKGkuZL7NrIMOosqYyTZsSwDlbJe
 TVEb6hHrO8520X0jKnJyOV0/j9QOVBCJiLemQDbp+O6ULcr1BZxywycCV
 Spupa18uYvPkKUOzOJ3e6jVnkFKI0q1Qqa8vfzxcCFAhcjetih29jyk29 Q==;
X-CSE-ConnectionGUID: 8tvCDbAgT9acz/aJIzb45A==
X-CSE-MsgGUID: vzXX8/wGRqORyT7ElqrkYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="98020267"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="98020267"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:17:20 -0800
X-CSE-ConnectionGUID: XBnov7fNSyuHXMZEVeMFvw==
X-CSE-MsgGUID: +t3+5YmPThCMpNFFi1EutA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:17:20 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:17:19 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 20:17:19 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:17:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QRrQ2OeDns7ztfHyZ8qboVxWwK/bIP0uZmhviJgodrBpc3qiZSwo41z40G/HRGU4Mv94L54gjLcNzw8VCacBKDOesffKgvT+OuqEdo8xnj0XB849TdOeoKZbNcI6+450h0f2TckAtzrl35wbmNN63yCfvUSz95x7CZPyLB5/6+aR2+K9Q2uJ1X8kqKUc9I4QbkxWct5TERmYEIY1o1EnKTZ0ozKs2wiN7DubO5jTNdu6eNZguXpGAgPg0OPk8cjwFCyaUCqrNxwYtRCmH91RisFBeaLwtvM0XF00ddaK5Xb5NSkBdfnCajOsRJ+5RC6HLkbQCXE5ODleB+D2ibCdMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CJ3RXJBLIFRXsDx/+W/CRHjelGgQGbJoUQw9gshv2ZQ=;
 b=QnnpPHyfG1n9KAhzq16V2sCer/OJymqoElOm85j3rybR5faGet4TJYcqXv2opEDTk2kkWgDUcQFkS6wBtvLj0Cn4ycxbMweLkI1R84BJEhmLsS+aTgsv3OXjZl9GPO271NAgNnHs5/gD+Iqww14Eej2GdLx2c2kXOyzJFfmLQmXxSjIgEYO1P4S9g7wMQgU2vjK7KUpTIL8iLGRFPzuCFE8Rp3Rcu0mzr330kwXQLGDxx0ZKT7D9XGDm+VCGztz1jLhvyB38OXzbVtY0Rt8zZnu5a58zNcnCyu+OGd3i23F4xwi62xisFl8Fd/F3Z+YsA4mQLzfsR8RkpygPJWylOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW3PR11MB4586.namprd11.prod.outlook.com
 (2603:10b6:303:5e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 04:17:17 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 04:17:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 13/19] drm/i915/lt_phy: Add xe3plpd .crtc_get_dpll
Thread-Topic: [PATCH 13/19] drm/i915/lt_phy: Add xe3plpd .crtc_get_dpll
Thread-Index: AQHcnOTWcVRw8I62BkqtwjrGcJjX67WJc1Qg
Date: Thu, 19 Feb 2026 04:17:17 +0000
Message-ID: <DM3PPF208195D8DF0A2654609BEC1434607E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-14-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-14-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW3PR11MB4586:EE_
x-ms-office365-filtering-correlation-id: f400c2f0-0c49-48e3-80f7-08de6f6dc46f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?8o045m/RQETHE9+jXaQXWm9hEmGPwmuTrp65xItLUXWb0Z98QAjokT9IZkeU?=
 =?us-ascii?Q?lVwAOjk6AR6cdaA/qgHnHbhnsMjAEiYzgsg6b28BSl8zMikajskwvnvB2koq?=
 =?us-ascii?Q?6l2mKcdl0ijDCDJYP4IF1Q/S+LhZZQJ3ZTebw9HeVl5CUiZ1HA0ulILSHP0o?=
 =?us-ascii?Q?UMHdWwSlNayO5tMXJS5avKbVqItFYMDahFP1m0HOcTGt6kn+e4F+aEZUyATi?=
 =?us-ascii?Q?uGyMcQGSdzpnniFKWhMgB6ybiUWXYRmryxColvqjeiYnifLMIzjVJaUwDI1P?=
 =?us-ascii?Q?GpSsf8ZQJRmfjfx4phPVD8bo1kBaj5D3wjWte7Uv6XvVBkeUKcfAxwClijHA?=
 =?us-ascii?Q?GqJ7Fj8i7nz9N/1EzteU7twRXBPtLz4AIhr2HAXvOfBKDW0/12eRccYYsN5K?=
 =?us-ascii?Q?mDaY6xHtJDvAIuBQw37zuQR2Hbewcp5eDqeCWYAV/drHpy/+Nd2/x4kTy0Qc?=
 =?us-ascii?Q?7EjrbG+/DRAN0VsKpekJwFy4ubyN1ju1DgDZcNou4XEUnLUlEtQpa/WB3fEK?=
 =?us-ascii?Q?n89xdTKabNC+QicKqm5Nfy/+99GaLtL8RhNZQSF9Ox2WTDugbDJW3atx4lj6?=
 =?us-ascii?Q?4zCMOaCjeFZ6UvroCpCxBSkO4WtmAnDZ8O1F7wWE0gBl4jU4HqVefOPiGYMG?=
 =?us-ascii?Q?YhcdVQ3RnxXv3Db688eUkJ6SWNPtpzjKdhzT7x3wgCe/ksQyud5vnZCN70fk?=
 =?us-ascii?Q?MFvaUQumrh3T9LJ2K+5oR7+j2vIImc0ptv1Z9cG8Gs9E8dV2CkU5myhT2S2k?=
 =?us-ascii?Q?GsKJFv5cAImtTQ6lN4muWoeQ33bsojoCd1FGaconnZuPZbygfWqBDbkY9mg1?=
 =?us-ascii?Q?zzy75mzP6PU65DW4sMKsW/rG9psKZWDsR8ZFejUIOc5y9BfC4HzsljFJtWvo?=
 =?us-ascii?Q?tKqjMQOhyNhb8s6kpRCuJges3NZ1PcX3oKBEHY5uRWbiq8kwFriS44hpjxsO?=
 =?us-ascii?Q?XEPSe7UgT6HQzM+2ICaQ+Q1J2vjOLhvaFwld54ADcreM/a8J28/px9llmYtg?=
 =?us-ascii?Q?oEUchk/vzd9OjlVyVLs40xlLRPeB2IGySKPIG/cMJayZ1GZbwGgzeu7MmULq?=
 =?us-ascii?Q?C/soZKlNmxPQImZ3oi7r5lkjSj5ishUwPP7JyyxmJrpOpceFFOVkVX1Xzos1?=
 =?us-ascii?Q?OV/0l4apGWZ8PZQ/KKx97+hcDUqhCBfJ7XJb6rSvbxpEo0tiMpaMncT4y0V/?=
 =?us-ascii?Q?gqQkW3RlO2tOhaSbJ9WVYmXuV3UYKqc6ALmDQzVg8jLD2ECfdhg05z+AgT8r?=
 =?us-ascii?Q?wZ8c5YIePLWVGVNFFNb1nMxh9HR4AMIRCSjeniqaDGKA2X5HVBt+CyV3ja7N?=
 =?us-ascii?Q?WElMJ1WI68dAv40j5PrCtGZJDNdyr9YHh05JJbPt4G5bC/M/VqODW73Tj76E?=
 =?us-ascii?Q?NVMnO2pUR3BpEzJCPigizusSnuj4TaUXibMWRZPaiRAeYO3BaiRyVzpLwSx7?=
 =?us-ascii?Q?CmSIQPf/Q+W8z95nONJE5NhOTDEixdVNFdVmY6Pf95aec2k7M8dYRo8dx/5Q?=
 =?us-ascii?Q?PzVh+I++Tq0q2BJ8dSL9fF1Z8Vb0Ng2Ghb9TofAAp4mzIl5QYSMbn4HH7xY7?=
 =?us-ascii?Q?1MVAgRgwMYH5ySir5sRrXMBPcBFyFkMYFeu/6mJ4LGG0pX2CJNvysjlZVSTb?=
 =?us-ascii?Q?J4lktz3gmEgWXk4iK185u6M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MFRgkewEBFApREfZP/Ti3fbn2s0Fdzij96U7ZgQfzva3x9ijohGfsiVuIhMM?=
 =?us-ascii?Q?uw1Zly79Cr22decrQ1IwnUfZN8AH28lAXwLxBJmGPcPdu/oAfUfn6iGosxfl?=
 =?us-ascii?Q?/0ubeDhfxTg/YE1oC1dfOKMk3LLbhKK9SP1OuOMrZ4bPgiUvdLFSXDf2mgXt?=
 =?us-ascii?Q?k7W7DN/C4U8Ql5QnUS9zvmvmQtEfEdtJ/+S9kLC2GJHD/O9YV13WnG2RuDuS?=
 =?us-ascii?Q?WJFYEPOHcIEUjLLH30M3A6zhLzVTqn5SxDkDu2oLy8eAJTgrYCe7aOJIOSUh?=
 =?us-ascii?Q?cD26ct+bKUKmxqYV/w4pbGtttXm4UZ5DKSV+CYbEw+1PYU19H42NQ0RBEZGf?=
 =?us-ascii?Q?Vvj8Gtohh5tgWJYfHr3SjGiBvCzWWFMxmW0P22MtjIDQPzWEMJlnVD1Gx4af?=
 =?us-ascii?Q?37+hMRTN//BkOhdWhpAjBhNIgID43c3wC+zY2B59cB5Lu4HOwvrvHmyxrqCv?=
 =?us-ascii?Q?NwyKahkX2OyPoKz672imbWBneQzEGOdlxZrSZp67j6d0j84XvbzbEhqomm2i?=
 =?us-ascii?Q?HD7/1hgmC9exyUklxPgRZVB7f1OQSuFhrLn+aM/BqcHkOnB41wnT/oxdAggG?=
 =?us-ascii?Q?ht86Mhv0wBjE9sMB9QFqWmTR21CenHyeNNt6CWoNfHG2YQ9RfUmvx1tiw8p7?=
 =?us-ascii?Q?lHFl6l7Z1h6FvFOpigegyFC0I0t0uRCvLsQ/2ZbO98A4584xGKKVNbP+iRB/?=
 =?us-ascii?Q?Vjw6G3/JoZPWugw84Gh/Uanae4xOfiBe1dYBzMuy/qPGSW+A/nmPNdZnv5tY?=
 =?us-ascii?Q?elMf1WVb0gzLTTX4/OWqGdN44xyiF3WYiEWqAEQgACEj/NSlfVbP/jaTB8m/?=
 =?us-ascii?Q?aQJc+8ihjNU3aF7jHMJLI9UlIVdE4d7Q5INx8rLMH8QHNach+i7KdJvYpe6K?=
 =?us-ascii?Q?Ja7Msgde3A3Hosy0UdXNqyBJEHYyMBJkCnE23EfQPJKzF5ofk95tRWVpOocz?=
 =?us-ascii?Q?pgQ/UtqACv3YccmuQgmOu5bJdEQERiwTEVetkrj59MLbqbnstNxLJTDoc01Y?=
 =?us-ascii?Q?z/yMj9+dPfzoAqEKBAQAY9HVWoX1ArlVmOFx4MPyK1FnC3w6hQmvqWfrM774?=
 =?us-ascii?Q?yO3/bnuDAlLJCd/SGHFpgUQzpptdM7jk7iAZ0unFIHIsaeOM+Gvn5efK3h4v?=
 =?us-ascii?Q?5nvbbUBc7bAaUcCbsgB+6ITWA1N9JZ4KWStuTCtFaj25DudsxZE8hGd2ZWNV?=
 =?us-ascii?Q?fcJb3Js0ur9sbriJZeDw0r7GBsmECNJikkzVuyf24DZEFhdZIyueJL+wq3sf?=
 =?us-ascii?Q?RQYGjNg2cnGC8gDO1aBk/YRsOtpWcnl5ypMA+K+zusFZUHfUstGJ+4QqH8KO?=
 =?us-ascii?Q?CgySvsiZl/DaT2tyMUCJ0XdWbYmCljuM6zku90BC6m5KFSvYV0+W6cUZn7FL?=
 =?us-ascii?Q?xKYmHG4LyeKshbPbiCysDvGu0iwM3QI4iJVssaAM7jmQ5vzutA3kGShFsyWL?=
 =?us-ascii?Q?X5KJfeL++BgjE24A8t6q4u7yGeAp2sBTTzDcmaMr1ygltSpx3qrE+Z8q1bsL?=
 =?us-ascii?Q?tR0EsXKETHuJI1nY+bujYOnH+7VjemNrhSB5sMhMTmcXKIXIuJZT3HneqxYZ?=
 =?us-ascii?Q?rVfOv8x8Rq3iEKkaSfNYdiT2v2EvbBykXf8Mk0eTOzZGlaFLEKvk35wCYj5L?=
 =?us-ascii?Q?IqDGEkpiLWwAHcThMSeUnj22y5ZndhAOMhWzFariFc6a2qtIYSblVfiUzPxH?=
 =?us-ascii?Q?MlqxHXShTy3bARCAtTUmPhhx7fJTw+VAPSylKMLhOY44cjA0GAXnuMeCuWmi?=
 =?us-ascii?Q?2zhoyhp8/Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f400c2f0-0c49-48e3-80f7-08de6f6dc46f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 04:17:17.0769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tv4gh/aLHwMqdImp3wQJumIjPL8/0hkes00ijLNJzm32ATPNJGevz0rHdxxgjQgmCFMlK0lds0B6CcKRT3wRDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4586
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
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
X-Rspamd-Queue-Id: 1258C15BFF3
X-Rspamd-Action: no action

> Subject: [PATCH 13/19] drm/i915/lt_phy: Add xe3plpd .crtc_get_dpll
>=20
> Add .crtc_get_dpll function pointer to support xe3plpd platform.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>'

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 88f11cb8c5e1..abc85ee9b832 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1691,6 +1691,7 @@ static int i8xx_crtc_compute_clock(struct
> intel_atomic_state *state,
>=20
>  static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs =3D {
>  	.crtc_compute_clock =3D xe3plpd_crtc_compute_clock,
> +	.crtc_get_dpll =3D hsw_crtc_get_dpll,
>  };
>=20
>  static const struct intel_dpll_global_funcs mtl_dpll_funcs =3D {
> --
> 2.43.0

