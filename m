Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D833E9E3347
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 06:47:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C2510EBF8;
	Wed,  4 Dec 2024 05:47:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Co3dcCuc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C3B510EBF7;
 Wed,  4 Dec 2024 05:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733291255; x=1764827255;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gezJIpXYT3ZAkASmPN4pZwbUgMfN0qQ6bW6A8jnQa+Q=;
 b=Co3dcCuc6O6riO65WzC8J0f6m4SLcaKpltYOPNM/5gTonMyrULELu3v5
 kq74YChmi00upB6vAStMk8uh33y5S67Z0JvGYd6xp+xvz2oI+dMbz7S5n
 +9ag+ZSLI5Uz3xcEM5XO0nm/MxYr3/4UJPYtKD5kG+0AlKFWYBgTngfA1
 MBg41/TG/Oo8N4vIqByW2h3iAR46wuFpCa1Bk3Fvu563BWx1HWcUvdIjW
 Iyw0oFtnTatLI9HU5GCSrACG/aS3a9AoSApXKPB7x8UFChg8RqWA4Rh6a
 jX50m5oekSDe7J0DqnXwMVviybSyTkrWGTCa70wRmZD9rp84UwS6PDUrs A==;
X-CSE-ConnectionGUID: lN7FVBASQTaKRT6Qq918hA==
X-CSE-MsgGUID: 92keLDkTSiGk47NvIUP03w==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33599608"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33599608"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 21:47:34 -0800
X-CSE-ConnectionGUID: H3JmaEWbT+mdJX0+JPYGRw==
X-CSE-MsgGUID: exzesj9QR1CzxcT3Msuvfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93848888"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 21:47:34 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 21:47:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 21:47:33 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 21:47:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dg4WhvcajpE5bWr4JSK8h1Zjwtk+DqLbybciZA5YvU4mtgRIjivQ95ZV0/4YOGJtJsiX0bcv16FgWsfQyyi9FCOOt1qKS8KnDVYGTfhgd4B0lUDs2NBf+0k5NnMF2y8WXdRqHkzblhz3GclwmpFdJWWL6vyAkQ6a48XyHQAacQG8lgB8d3V6/TJTCBnO++YUoB1cleUiJbxhLauc3OMmx5PBoFNlnvuH0cVsV6l27XbYbdV7paY/KZdE3ZncHt/rhxXIk9voqPMmsgeq8llPd2SMddc1SDPnQKRfg0+n6IjKRppvEPySQnJllZ+q3rCWzddb8trPnByVe4P8bqDq1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/2ysxBZ3T9qRBZyV0sIu2eFDHncmLcRfpSYxQMgDYHc=;
 b=zCEyvkLz0heD51WBpQSZyeqZrt/r+oo/wJA2h7kTEY22qmVGb5iLBcqD0alXP7Emh+4w7I0jwlhlifH5TKVea6ipmBmLfWgQrY58cD9SxI61T0LIWMU02COHXyT+qFx4EggTxYtwFYs/9nKEh4HAblJjlTl6ALSckgsX1Qet5vwfuVKgZkLOtYFaq/+K4RLb2i4IuONocpf8sV4M+8CB/lnqXDNI2jUxxy7z4yNkkPDS08fy6w7fshvtUauxdrfJXMb80qYfgn3mhjuQv6CYHsSr++l3EJG/xtzpS68a0GmJ7s9x/PmK6mmHCoIOpqnGieA3jlQe6LQRQ+oLb7LSRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB6984.namprd11.prod.outlook.com (2603:10b6:303:22e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Wed, 4 Dec
 2024 05:47:27 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8230.010; Wed, 4 Dec 2024
 05:47:26 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "linux-usb@vger.kernel.org"
 <linux-usb@vger.kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, =?iso-8859-1?Q?Thomas_Wei=DFschuh?=
 <linux@weissschuh.net>, Luca Coelho <luca@coelho.fi>
Subject: RE: [PATCH] usb: typec: ucsi: Fix connector status writing past
 buffer size
Thread-Topic: [PATCH] usb: typec: ucsi: Fix connector status writing past
 buffer size
Thread-Index: AQHbRb4ggL3Z6Ovy2kaSNCuLzlX+7bLVlBbQ
Date: Wed, 4 Dec 2024 05:47:26 +0000
Message-ID: <SJ1PR11MB612948FEE159D29D262B8E3BB9372@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241203200010.2821132-1-lucas.demarchi@intel.com>
In-Reply-To: <20241203200010.2821132-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB6984:EE_
x-ms-office365-filtering-correlation-id: 5e7ae8d1-439f-4e04-a47a-08dd14272203
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?1coWnQN7jdgfj/CZgGBZPyS2buUvt9EG+Bf783nOwHLWiyc+eNsKo8a+dm?=
 =?iso-8859-1?Q?2AQahI5iK4tPYi4BDf3BSLNaHjxsT8m33vRxXlmV8y1reKuYz4RZQ/Lfzr?=
 =?iso-8859-1?Q?MRBdyUIhOkAMaSzSIdk351tcvsfwMzKiT+ntdw29hfWOUvjDWCSuMS9GDZ?=
 =?iso-8859-1?Q?JOJcDel3pkuiUTeUV/wtukANKiVNxJmQlOYAotzz6B+5Y3/c+urrPI/huP?=
 =?iso-8859-1?Q?BA83Okxn4TcJzt31AGEdmM/1Eczt8GX/D3xaOmCTomsh9sXlXAfj8Wrkfv?=
 =?iso-8859-1?Q?+tn2tUJKYI57cCG/v1OQj0uerlBNOl6x+TRuFGHa1I6Ql+4568hLG2wTxT?=
 =?iso-8859-1?Q?oPMOwOtpa8IcCVf4lVXqaCHzCvlPwHoT1yuQNj3cd+Gayj1lu8ehzQlZem?=
 =?iso-8859-1?Q?iQDzptSIAwwweVeFa+bJwxlkSMz1KwJEROpaCy4WJ0zt7nrmU/PQCnTLso?=
 =?iso-8859-1?Q?gqYV+F5iK+WWfXs1EAWJBVdjpa+mmjKQlgM165jGl7/bLuPvo1iFB3jpNT?=
 =?iso-8859-1?Q?buAx9WEf2Tz4fg9QdyvXZ0aVrAwF7FMUoqQgBCCgBo1J6TXqvVQpImOZ7B?=
 =?iso-8859-1?Q?z/ZUasUGVlrukudkoPJ0ZA0M8P10/fKwwmNEqdMwyxcCSwfJH4aiplRFRL?=
 =?iso-8859-1?Q?lNfsnxM9bRu0YPrxxCgtYLqSrcBpdHwDmy9/3fOmqtz/gC1ELOuURZujLP?=
 =?iso-8859-1?Q?tsLUXZbeOjTfceBjkATx8FWkvY4jZ2xfnayJF2LRi7ymf6NvYU311hvlzc?=
 =?iso-8859-1?Q?bjiiRVwUovtwcn+Gk4ICGVmVq38Vs0GbjLvqL6wOW5yudguUFGT0tALNr5?=
 =?iso-8859-1?Q?bJ57QLH58PXTTTRWCIHB/Nb7vSVIurl7lBrqK22e3fX4NuF6G6UjjkBomU?=
 =?iso-8859-1?Q?qjNwltcCNCRvyUwOGdNHCLSHwtpcbEbqH6kdXFhULywIZLb7qd1Z/e1NCT?=
 =?iso-8859-1?Q?Y+cZrb3XOx3jvuw82EFk7o0PQt+upIiHvfmI+LtxcH/O1sGNmujpBly81v?=
 =?iso-8859-1?Q?AB36Q10pxX9H90FtQ7IkIrJRLOdn9D0QfKrGavavF8w4UJFYgIzJ5bVFeB?=
 =?iso-8859-1?Q?Gn/qLWYfSATxfW0PgFk5mi4efW+3tZRF2VSyvw2OIU0OSVGmoRHv5+iA/n?=
 =?iso-8859-1?Q?5QBlShv+qi0LEdkGLCMndfnL8hL/1Y2NHYuqJFjlmN9NE8C/MWAqi6ywhH?=
 =?iso-8859-1?Q?dFhQEusBWBzQhTRCWoBBGasD+k6keP7QfW5Vhq2UtcWUOjm+4FYdKgHOHX?=
 =?iso-8859-1?Q?8S2kdJ9ZSMD8ZEDl1299J4nB7ByhV56cr3adcbTCT31spCXilmwwzBgbf3?=
 =?iso-8859-1?Q?7/d2Yj+wunUKTDdoPBD2tGCzitUqAZoafk0PNCfIfeDQT34TA5vyPm/9Xh?=
 =?iso-8859-1?Q?zPGTYc7Wq97QOlXvtN2kt7thFw6UrFsp22gx7QOnGkPxu5DsMnvlNFMFkT?=
 =?iso-8859-1?Q?/pGl+LVffntY9+tL5HPQjWuwVV+k8W33lPCA8Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Wu3MIQwPG1Rky/HM7vESLBBZW5oMzTyFV4Gp588wQRLKyedpydQrCRDQ4Z?=
 =?iso-8859-1?Q?jWPYMkrsMJa8d6/na8q2gu1RXZDqSo1NGsveUc+mnf4k5ON8eSopBKqMmm?=
 =?iso-8859-1?Q?jYiXd2GQjguLzMfGpXyXvkG6UN7TPkHYxbLMLlIane/p4s0K/N+OIx+u07?=
 =?iso-8859-1?Q?VtPVlAsJwkj98ZC/My+0EzFI/Mf8YatvllbUnMtTTM1V21TpHGwVBVHMqM?=
 =?iso-8859-1?Q?nOtAzN0BFpC3AwxoxVJMiVFxlo5a+iSlrFhW2yczXsE12WBl3tzLJstwbV?=
 =?iso-8859-1?Q?it3XVvEiSKM30nRJ2s3Lm4BBoIg6ezuMr13mOT2MARHIUTLnXl+A+GI2Lk?=
 =?iso-8859-1?Q?5rXvG0g1fPfQ5LXcq/7JL/KWeT87CcwzatMj+C9UihbpRCM7H/wX4pJ4S4?=
 =?iso-8859-1?Q?wNpPANcy4YHAv8ZUTOH+FvYdtqGq4jXO2Yi0ae3ROxQV4qH9lmB0TwndEN?=
 =?iso-8859-1?Q?wmb8Z6dJ6DOpuGnV34pkq31wAyG3X9WoZO8SHNUu/kpDzTZj8SbITIp00D?=
 =?iso-8859-1?Q?NUTXsWOPu1j9n5t+sTIcA3fN6l809R++uXdIaA4+YJ+KFAX1kLoRIwoTGV?=
 =?iso-8859-1?Q?GY1JUl9JyNF/mqvH5V0NDbTPvaHVGREq/VtmnOp7JOR/8r5jTzC7QoU7KW?=
 =?iso-8859-1?Q?Q8XJFwx+3oLld8keEnqniVfIrSd1ljCPhJV5ToAfZVK1EfSdPqX6HO569/?=
 =?iso-8859-1?Q?nJuo3Bein/KfpOx+dMSL4vYFNptjGtxQoop7eL0iImiWScPwXIQ2RD3hPS?=
 =?iso-8859-1?Q?rzq7xGriC4sONmFVqDaV+/2usnuZFAa276/2pVTvH2hoBssxq9cYRd80ji?=
 =?iso-8859-1?Q?CkbnsAdyCO2D10O2jbViorGn9dIr6smUhMLqjI1vg0wpckxS6o4I1WEtyG?=
 =?iso-8859-1?Q?5zzKSTdgBinTFlOcAfdn/ICZD0FEMzWPts5/WkU6zbPEgiwLhaF+BE7QEn?=
 =?iso-8859-1?Q?N2LGVl+zlux4kZtr332P9Qe/d958yGNlQtqpk0P5C2UhrGSC7z/0gDuIEJ?=
 =?iso-8859-1?Q?kgGeU9RmCtWx9RyGnZGiG4Rr6XwmbCrkdeRyVxvzDN3Nq+NNtFgNhCEZcb?=
 =?iso-8859-1?Q?ZgOeKhAHaSNVPrO4bxZzppWw5M6KmdLTJpsDSerPLvD3LaQ5uo8ZOUKoSR?=
 =?iso-8859-1?Q?ErEORBHQzJQ2nr0z96FUyHXIz3dCQ/ZAIbPs/fYb7Mdtc7muANZSVrvbXZ?=
 =?iso-8859-1?Q?tmZj4fBzJjkuJlWCKcBHpzdlHOJgU2oAgIzk3H9UkUVeQcfLg+rbfEkNqh?=
 =?iso-8859-1?Q?pW6dvWLN2j6z9pbYV0/pC85nLB3MfTzqfEh/IdynnoRW3VwWOjr0Pu+czt?=
 =?iso-8859-1?Q?3KAsTFwQ8HY3QwrdWWKHLHlJs3ouhX459ZeiFhAciuChdogfARSdFm47zy?=
 =?iso-8859-1?Q?0NQl3h7rG55EavwFXvn5tT/M6Y0e8NkKwI8RSQAR+ZuL1X5o6CGVracEuM?=
 =?iso-8859-1?Q?cRJcUgL8ttF/7BlkXXYhljvsTPPOCI+wdDw4SqSZYr7UCsYvZifRReUvt6?=
 =?iso-8859-1?Q?Zoru0N95ronyP8AebaSGJf3neIMafjHxccQ3ShPWzwhM9FBYejG78xIrUC?=
 =?iso-8859-1?Q?K7z4dIG0WZzvF1+aNG+2oi4CKM0xRMO+S+pMnNjOapHQbPyp3uwdH3oh1h?=
 =?iso-8859-1?Q?Bvtg4YeDdZk1i7SsRCC9OPrAOIO5ZJEoU9ZDnZiL7M/4tH9NmrVhqLZw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7ae8d1-439f-4e04-a47a-08dd14272203
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2024 05:47:26.3225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GKmAK6j4M1eWuCT7ryDz8C5tvv/ZYf9D3e7qFV798TVxIeZ0h+Dm2lPshlOchT6S1ems5OwSW8GJ9v5qKUWbPsDP8QbLslXZtQqrqw4BLbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6984
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
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, December 4, 2024 1:30 AM
> To: linux-usb@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org; Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>; Heikki Krogerus
> <heikki.krogerus@linux.intel.com>; intel-xe@lists.freedesktop.org; intel-
> gfx@lists.freedesktop.org; Thomas Wei=DFschuh <linux@weissschuh.net>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Luca Coelho
> <luca@coelho.fi>; De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: [PATCH] usb: typec: ucsi: Fix connector status writing past buff=
er size
>=20
> Similar to commit 65c4c9447bfc ("usb: typec: ucsi: Fix a missing bits to =
bytes
> conversion in ucsi_init()"), there was a missing conversion from bits to =
bytes.
> Here the outcome is worse though: since the value is lower than
> UCSI_MAX_DATA_LENGTH, instead of bailing out with an error, it writes pas=
t
> the buffer size.
>=20
> The error is then seen in other places like below:
>=20
> 	Oops: general protection fault, probably for non-canonical address
> 0x891e812cd0ed968: 0000 [#1] PREEMPT SMP NOPTI
> 	CPU: 3 UID: 110 PID: 906 Comm: prometheus-node Not tainted
> 6.13.0-rc1-xe #1
> 	Hardware name: Intel Corporation Lunar Lake Client Platform/LNL-M
> LP5 RVP1, BIOS LNLMFWI1.R00.3222.D84.2410171025 10/17/2024
> 	RIP: 0010:power_supply_get_property+0x3e/0xe0
> 	Code: 85 c0 7e 4f 4c 8b 07 89 f3 49 89 d4 49 8b 48 20 48 85 c9 74 72
> 49 8b 70 18 31 d2 31 c0 eb 0b 83 c2 01 48 63 c2 48 39 c8 73 5d <3b> 1c 86=
 75
> f0 49 8b 40 28 4c 89 e2 89 de ff d0 0f 1f 00 5b 41 5c
> 	RSP: 0018:ffffc900017dfa50 EFLAGS: 00010246
> 	RAX: 0000000000000000 RBX: 0000000000000011 RCX:
> c963b02c06092008
> 	RDX: 0000000000000000 RSI: 0891e812cd0ed968 RDI:
> ffff888121dd6800
> 	RBP: ffffc900017dfa68 R08: ffff88810a4024b8 R09: 0000000000000000
> 	R10: 0000000000000000 R11: 0000000000000000 R12:
> ffffc900017dfa78
> 	R13: ffff888121dd6800 R14: ffff888138ad2c00 R15: ffff88810c57c528
> 	FS:  00007713a2ffd6c0(0000) GS:ffff88846f380000(0000)
> knlGS:0000000000000000
> 	CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> 	CR2: 000000c0004b1000 CR3: 0000000121ce8003 CR4:
> 0000000000f72ef0
> 	DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000
> 	DR3: 0000000000000000 DR6: 00000000ffff07f0 DR7:
> 0000000000000400
> 	PKRU: 55555554
> 	Call Trace:
> 	 <TASK>
> 	 ? show_regs+0x6c/0x80
> 	 ? die_addr+0x37/0xa0
> 	 ? exc_general_protection+0x1c1/0x440
> 	 ? asm_exc_general_protection+0x27/0x30
> 	 ? power_supply_get_property+0x3e/0xe0
> 	 power_supply_hwmon_read+0x50/0xe0
> 	 hwmon_attr_show+0x46/0x170
> 	 dev_attr_show+0x1a/0x70
> 	 sysfs_kf_seq_show+0xaa/0x120
> 	 kernfs_seq_show+0x41/0x60
>=20
> Just use the buffer size as argument to fix it.
>=20
> Fixes: 226ff2e681d0 ("usb: typec: ucsi: Convert connector specific comman=
ds
> to bitmaps")
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Tested-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> ---
>  drivers/usb/typec/ucsi/ucsi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/usb/typec/ucsi/ucsi.c b/drivers/usb/typec/ucsi/ucsi.=
c index
> c435c0835744a..69caae84879e9 100644
> --- a/drivers/usb/typec/ucsi/ucsi.c
> +++ b/drivers/usb/typec/ucsi/ucsi.c
> @@ -651,7 +651,8 @@ static void ucsi_unregister_altmodes(struct
> ucsi_connector *con, u8 recipient)  static int ucsi_get_connector_status(=
struct
> ucsi_connector *con, bool conn_ack)  {
>  	u64 command =3D UCSI_GET_CONNECTOR_STATUS |
> UCSI_CONNECTOR_NUMBER(con->num);
> -	size_t size =3D min(UCSI_GET_CONNECTOR_STATUS_SIZE,
> UCSI_MAX_DATA_LENGTH(con->ucsi));
> +	size_t size =3D min(sizeof(con->status),
> +			  UCSI_MAX_DATA_LENGTH(con->ucsi));
>  	int ret;
>=20
>  	ret =3D ucsi_send_command_common(con->ucsi, command, &con-
> >status, size, conn_ack);
> --
> 2.47.0

