Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPHoEo11eGlDqAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 09:21:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCB49108D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 09:21:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F85210E4DA;
	Tue, 27 Jan 2026 08:21:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RKh78VZ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0541D10E4DA;
 Tue, 27 Jan 2026 08:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769502089; x=1801038089;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1IEyLKxahHllus8y7bPHhjx9rb3T+oXi9iB/tV3sR0w=;
 b=RKh78VZ7A2j7NKBq0fcQqFIkxMs98U/pRD9VKp93403uZ7Nf7wsGo/fr
 tcVv8oUuOoKB8K7G8ORMAhzflgmAhnSp6usMF1aLF/cDFde9DUHRQiVjj
 x0fnWT40QFVGgHS4Ch/UTSXFnJHNCi9E/tWddeOTub3/nRKkoeM6nFzDh
 CFWkAqA1bryvWFCAgcLp1OgqskvSBaUXS0nO1PTx4ibH2SlrJin35EkHO
 m/sphspZ7KFFMO5oZ9VqdsHPJw5CdODousvUnYI0InZzhMGV2Lq4wTR0s
 j2F3Tm5Vv1fwMkqpLqiya/1KPtuXBxVqIGJUGu3VDharigVpdd0MV1/xJ g==;
X-CSE-ConnectionGUID: s4Wj2Vm7S5a6maGiMEyYCw==
X-CSE-MsgGUID: oX/xema4Q6GKhhl7LcesxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70593941"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70593941"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 00:21:28 -0800
X-CSE-ConnectionGUID: 8D7lhXSbRFe115meOU3QOg==
X-CSE-MsgGUID: zvs3sU2CTv2cQuupDqiVlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="239181873"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 00:21:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 00:21:26 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 00:21:26 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 00:21:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XEQRZcXgeF7VbJKjcsIHuvVg/RKMytJ6NgD1C72edevixmz/CcugveeC1Xb/QLUnR2jzSqgab+pK3rspUvzfCYw0gUQs6ReC7Ce2TynVqB96qUooTIgny19dkYjgvOeXlUkDOAkKVxBfEw0K1N7oxR4pdllVJr3sRXRbSXgAB7LcwcuVQI42eikZuktibUm4u9/JhFU3FTYJa1RMlht4TzddW911vDJZOUbrL04l3j/DO2UarzcSOl+4MPDyNF2AXItrtd2wTj7mgmaYwBi1+MSOMJOT9ehJaBOrSujrmcqOIC9ehFBQC0E0LnpiVnLABcxE79/jdQLPKABTW3bFYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+UrXS3NoIsW9lcG7nVCjoGGHyjBTw8OUyONTYda7CZ0=;
 b=JnLxzISOR6ORyehS3hMN7KhVI5FOt+HOrmcbOYK64+J0CxGUgrZ6bHoCtEfKfNpxxmtczi5oGtmAyOZdxYytqwOLTfgwBN0RJgNf5t5ojReCE7gvHmdtOzIw4Ju+07dUmhN80b9bB7XjOGSQoUhOi+Q893n2/uapf+1NdjfbO3fDlRng53qYt0LB4/eOop0Se5pTgfJ+jv+GliP8bJWcoVAyOlKjoBWZ1Qs0f5MBy8kVNUJL0a0LV1g1Tq2ILyIJRxBdveqTsahJEWtkIJbXpCJEuWqyFAJDGpfTsPpzRrODa7c5FgJP1gr/jqMI28FPBwUy9q2PlXoPoCVt3lXlJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6196.namprd11.prod.outlook.com
 (2603:10b6:208:3e8::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 08:21:07 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9542.015; Tue, 27 Jan 2026
 08:21:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Topic: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Index: AQHcj2KIqBjPR2Lt0kaY0Wdnjuk0M7Vlq5CQ
Date: Tue, 27 Jan 2026 08:21:07 +0000
Message-ID: <DM3PPF208195D8DC5C28AE67D593A5CB53DE390A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260127074644.991015-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260127074644.991015-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260127074644.991015-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6196:EE_
x-ms-office365-filtering-correlation-id: dbb529f6-2ffb-49c9-5315-08de5d7d0526
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?chs/fjmHrGG5mlbNSsXWTfHfo/MGUJzydgavzpFVsP5Ko4MLHrWYpbATEoja?=
 =?us-ascii?Q?ICPO3vdTl1xI4MNphE8XFO300V6JmzdDdT1KbTGqJbdo0yIjws04E8v9tBhv?=
 =?us-ascii?Q?LzsLierMxFX0555Rp5ISQqkWs3rRZszpUxJqEoDEHOXm9Q7C4gTcOuu1lkg2?=
 =?us-ascii?Q?8e4NCgp5KdejGw72FC26UtwOtSgEQAnaN2Tl6taJ1K6f8u20UNqVIGmMqhIm?=
 =?us-ascii?Q?IKE3DqC2gB8DJOz2ZXctotSvmn2QSVdBjlN6du3TYjwuTQSNituJxrgAyKP7?=
 =?us-ascii?Q?cTyChDY7uAmZtiT8ljftwVHatDnjCqI9omvW5L8G0e+4uzJgJH/1Prw24EAF?=
 =?us-ascii?Q?ST7MCkqNK7safGiVrmNEr5nBtZZkzYZUU6VlK/cPKmq9R9cTwEk7eSQBQoeg?=
 =?us-ascii?Q?diVSmFvYHCpJCxvRF9RmxqVWrAUR8+MNj4Fbafp5fwv4sYeqrtSw31/lfkTm?=
 =?us-ascii?Q?Fza3ngZu5anh1Urkwnvk8j8gF9d6lAmwCR40S4edx5gZVLBljNhnRe0oeFj/?=
 =?us-ascii?Q?dbt9y4rITbnanBhn+reCJL40rSKpenrQcnNBzKdFcEMt2Bz0dd/NLBH1ZAlh?=
 =?us-ascii?Q?VVhYJnM//YdRp8ePsKYz23sgyxhThKA9+ZkzSD4Ap7wlRknq779H7JCSUY73?=
 =?us-ascii?Q?lxBcEF1qUrlc06QqyxeUhYOac2bYum0QrDtghPvPz2Pvh6Ic22CKonF9lybw?=
 =?us-ascii?Q?9r3f7IvjNiaqHQ7Rqnk56iJ110tMDzWYosb2YiiXaADqVNXGQLmhaKMCzK3/?=
 =?us-ascii?Q?4x5lZLvv5ywB+Dh3MTlIVF4isYIZK+wxO/NR/EPc+dzhRP4LY235zD6veJXr?=
 =?us-ascii?Q?S4kvvCnYJRcrKG9xssQfV9FE7PZ7WquZQj3ZTSqmZNMvLPhW1e3XRdCSjsYg?=
 =?us-ascii?Q?wZdzIMwMtQ58ukNYTVaO3jTB3rgoWE8gdXy96fGUKnwiy/KMqZ9gpfOIm5vW?=
 =?us-ascii?Q?cpyzf/eXSqfWCCnGWduZewXa+3s9gav3o9EB3x31lXQ8zgkefyEA/1ogODDn?=
 =?us-ascii?Q?gr3926i0GqdpzPCfDp8RVWXml0xX1qdmplBgnhelCb0Oc+AAEU5oqUh+0ZU3?=
 =?us-ascii?Q?CU2qXHMo7Ttw6gXZvXUJg+eLOJ+zemcH71R65hOIu+rB0/CNj0WtD7HR/ks3?=
 =?us-ascii?Q?fISrrcDITi4InJ13ZyXgTP+/LONxo1c3CYZnlSCByIc5kH1MhkKw+3NCAzI0?=
 =?us-ascii?Q?dRW4wmKzyEcf6T6bML3bkMs7jw/breFCkpzErkQlGKWXc8lJ3CPHV2DybXwE?=
 =?us-ascii?Q?Nq337AKqgT+g0nKXfn6ADNnOogPumFqFQtTRfqMX0ffRD+nm210qXHTn40N2?=
 =?us-ascii?Q?da6cZIEQo1qklOT1JsneXX84v3aCGJKp4oE6OVv+Pdw/4mvDGS06WMB2XHmW?=
 =?us-ascii?Q?zye1MqjHbdPfdTQ0bVKWsX3OYx+IK0LY7B7HOvYmpPdDj7kwq0pQ33niOdTH?=
 =?us-ascii?Q?8zb2ENKFvb7uZA22EwpsiQzUfkKQ5HrNr8pu4ZpF5PMw/ed2sAUOqp2Mbsz7?=
 =?us-ascii?Q?FLCuc3BUzAMAyx9xJByo8Cc1QivR8EZdj3VVHxwu6/KsOc5E+h2YmJQJLyBE?=
 =?us-ascii?Q?ma5FEEdu2iOBQqHteUgAvS9+yikv5bEaq9H2Epbe/WEZPr57ayQbSdVXv0Wv?=
 =?us-ascii?Q?OmUswuTgIseDulZtqj99YXM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f78UhC1PDRvYrrU3rL/g7n/ranP6n/IBpnKmF4T1xkgIrjOhNp4RC10jRk1m?=
 =?us-ascii?Q?3aHUXyKdDAvLSavHWNs8OQZM7MCbg9+GHrykDOIzBSs92v1YNyRxMM2OlYX1?=
 =?us-ascii?Q?67HBjLYy9b4F2s1pYzz/c7lkyw+TUHZp1q7VP/ymGpJO+Nrf0KVdcUbYtzOR?=
 =?us-ascii?Q?uybu5k0QkKBp01W5h0vKS42wpfyIOETX5kLba1N6T8KWGUxWsrZGiNWsQV1i?=
 =?us-ascii?Q?AJX9+KmaNU9hjnhkCnnA9aCPc7dbT5X1BVy9m/NCDRtCg2MFZF6+WwF14pVF?=
 =?us-ascii?Q?3z6BFJDswFzE1nh1ZBxxwayGRbhLDT4N06jj0vvC3CaMkKnA9KuTkg4oIP++?=
 =?us-ascii?Q?3ZyUgg4cWQWj0Vcq/c9AsgH6vOpq/YxKtZOg62LeFJ2aGeSg1q8Sr4YJELOY?=
 =?us-ascii?Q?R2IYoi8jOx/Sb7FsiwZ+r/J3wBZOQ3kmnQ6REVhFDjPCLBpKocQogXqqYhqV?=
 =?us-ascii?Q?+vS713N+SYr8PAF3vIyYVicQ6GFMXNmuxr+CXPPV2HmRjLrdKHqbuhQpJyYk?=
 =?us-ascii?Q?tl1AXSjhLMb+0NTjolxDqTbZDGcDbR7PYFPus9eBu6NNcw5Q6hbgjowR2/FZ?=
 =?us-ascii?Q?jxFhfE5HPP5b8LXZfct6wBxbZ7dfzA0RW0CELMrG3T4LG7+lmVpg1O6t6rW9?=
 =?us-ascii?Q?ctZ/RwD0KUj86FCmKn9r85+IObuYHBTPfJNwwUTGsAkf3U3Lzh2ggxdY9nmh?=
 =?us-ascii?Q?iyTI0r6Xf9CzbvvFGzwB3AgItbSe7Ys36yA2u5DtvZaKnN0F2XRqEQlsLpBr?=
 =?us-ascii?Q?ceTGKEI46TF9iZ9O9d6+acspSXdCJYsvCIw0rRKdGfqX7ONGVgrMvjw3uWs7?=
 =?us-ascii?Q?54fr25kG69MiSU+TykxPm5noqfVWBrVTB5yOvyPHZ73rML+GuMiKd/GYHLa6?=
 =?us-ascii?Q?UZfmrwLF7AOIgd4QrnJ2Q+EWaBAFJc50LhaRlDbgpvoKMpgN2m+8tY9Xgde2?=
 =?us-ascii?Q?cgEN/rqYQ+2j+pCZQu5v+K+fSOXifJdDH8oxjIaiyr+Fw6hh4S0J6DbM6V4u?=
 =?us-ascii?Q?pboGXBPnHuTfUgD9cKhw9/59LNW+xjmakVRhZHd2RrnTP1BniG3eVL7lpQLl?=
 =?us-ascii?Q?UL4vN5XfLaPhlS4uyngbNxJDVKro3r7xusBZu4VeHBxuvieqCKVqdabptjvf?=
 =?us-ascii?Q?eXnfI9Zfm8g74YC5npBH9czssFupkNo/NkxiaCizUdieaybAR14dS+vHx1Mz?=
 =?us-ascii?Q?hgg0A6Hyk8Zd2Ua3b/iaRNqVybflPkCipCEM1cz5QzSz3sUbvNVeF5FAra2X?=
 =?us-ascii?Q?jIR80xT9uTot22VRfG2of3EyIPYBX9r+gJstmc4ZaScNLSZ/AqSv2ymlp3E2?=
 =?us-ascii?Q?aDyiy25x+M1/vjNjTeeFoXN9O5JcfE3zLbgJBUYPnlh0bqC0bZB9i9misUDe?=
 =?us-ascii?Q?G3GPvMvqHSSm3zKT2W0+cl01qdVYmKsQ58h3b08iZD9bmZgUpiKWI1fNDMiS?=
 =?us-ascii?Q?dEn6sK6ymsnwYR8Bx/0Q4Co+kbbHCjcjQzFo6FPPYlGUgl9ilWNiITbZjOkp?=
 =?us-ascii?Q?aK+Iwb6h4YTKEYZHn62PzvElNGM5pYY4mAJhN0WcUJRFXk13EMMQbyPUihPE?=
 =?us-ascii?Q?UlxtrJTJBV7+PXpcGafaK0ws8TU+aBpuElhhwX5x0kX2G0nf2r/nmw6uNy0N?=
 =?us-ascii?Q?dmI1Q70tbhW1FiY/2IqsIn5czced6bQk07g67V9l58ujTMfDz7sqc3Oa0dLc?=
 =?us-ascii?Q?RXZS8p4aEmBaccRnNTaAO4ZekXaJwuuDbctRkTqp9DwUEMyBye8nYyErU5qM?=
 =?us-ascii?Q?kZTQqKDO2w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbb529f6-2ffb-49c9-5315-08de5d7d0526
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2026 08:21:07.1455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ozdBF7F6RWinRa7jbdt5xm6O03AJKf0NRS0ywLAE+VRCldyCEk2Qlw6qa/sAhLUrvocN3p7oB2grwqOo+UibqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6196
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: AFCB49108D
X-Rspamd-Action: no action

> Subject: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
>=20

Let's keep the subject here as Defeature Port Sync rather than implement WA=
_
I know it shows up as a WA but actually we are just defeaturing this. Its n=
ot some
Issue we are working around.

> Defeature port sync feature for xe3lpd onwards.
> --v1:
> - Use xe3lpd naming (Suraj)
> - Use IS_DISPLAY_VER (Suraj)
>=20

You can add the Bspec link for the register where it says this is being def=
eature I think its in=20
TRANS_DDI_FUNC2

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d8739e2bb004..a3e6f9a31b20 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4588,8 +4588,11 @@ intel_ddi_port_sync_transcoders(const struct
> intel_crtc_state *ref_crtc_state,
>  	/*
>  	 * We don't enable port sync on BDW due to missing w/as and
>  	 * due to not having adjusted the modeset sequence appropriately.
> +	 *
> +	 * Wa_16024710867
> +	 * Deprecate port sync support for xe3lpd+

You can remove this comment  and just modify the above comment to=20
From xe3lpd onwards we have defeatured this=20

With that fixed LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  	 */
> -	if (DISPLAY_VER(display) < 9)
> +	if (!IS_DISPLAY_VER(display, 9, 20))
>  		return 0;
>=20
>  	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> --
> 2.48.1

