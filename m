Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AA3AD47C1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 03:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4424710E334;
	Wed, 11 Jun 2025 01:10:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MCvtp4U5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D2310E045;
 Wed, 11 Jun 2025 01:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749604232; x=1781140232;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LvWCUpQWs72qlSFXUrqVql7ncjFkxBbLoTbV3E7KOxo=;
 b=MCvtp4U5nQOx4gYm6MJQn/fPKyNRYBf4VAbDbG4kJw/W5eTEG5a4fc/w
 jC8iTZaVNorkZa9hUhySGsTW1f+eDYeWhj6t4ze0yra0BQ/w/Za7NHU8S
 8GU/TGhn08pH6zMJ8Ie3ht+YJIsjTodYaEsGsNM7xgeksB18R8grpElE6
 KW8TRI+aJkS573QVsTGV+pQvzxD4h0HZ5m3H40pJkvFjy9+T+blcOts9j
 JyGvDfyBKZ+vfrh4NE4xkADZeCT6HlvybMHk+M+bgoBrv9+CjX8g7xcWS
 vWg1RFfdMd4Ws4SkKGFW+RO6xvCKXhPDF3HZ0wW/84c4p1wpVdtWEt3xd Q==;
X-CSE-ConnectionGUID: K0/IJlzdTRmFfBgrc6s9Bg==
X-CSE-MsgGUID: 2yaMUlxSTiCixCL1oMLA2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51647637"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51647637"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 18:10:29 -0700
X-CSE-ConnectionGUID: MpxcVj/sSKerVdCiP4Bncw==
X-CSE-MsgGUID: pjTWxLpdTU+igXZneZ9vaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="146908639"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 18:10:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 18:10:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 18:10:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.56)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 18:10:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VGjmLuDCcQBHSifyMWG3USBSxpMaH+2N/zdVFcbuLCf89tcwIYfeaxRJ5OmNcA+thhIi2CtKFUXUqEf8PKoIX3+dkgdmNQem7N6d2G9beRp46FtA100hzYBeqs0SyK5eLioyxEMU5B8pnMVWBDwrn0ZXtQ3Z18jSjQ98AHV5+eutFaX6WhvBUxFl/0qPnDpjusvaGHrXg3Tb1sCmPHRT2GRURj4OyKw4XBv1QcOeNCbe1lQDm3Mvz3mGFF4m0//uj/h0ilhzPrj8lbEh00lYZSv4zM9WF98HiRWbdqqOpcppMU7NkK45nxH8Tvi8s0/Z2HQsUFLr9wp0txcY065/8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e1Rtv7FBd6xbZKQvYqMLsJB4CLh37kLjRMScbrhCGt4=;
 b=flL64Z3QYIJO5rRdkVA7+HAue46AaB75YkbYJNq66CtED16K5n1fGEAxQzRUpES3G2a9TcBWwd0sAoMG/MiyFEx4TQpOMZ+nCn5yqOui7NhlqzTvDD4YsBXlVHsn+8djzCRpG77JeiMzeKQOc4GcJnLPu3JaMdc1jY/URABB4qBNSXqTf0/jdOZAQxcOoPdysfN81C+jgxXXCGfbD+DmfBEOXByMSKEysllACgeL3r/SnQp83gI5RmTrfVJAVQeq672Z5BJQhvaVrke0EeHZfNaq5IAsFSLGYSxD7SeEwB4wOuyh6Q0xTWFIzWLhcuLzwyM79IBwLTCMzrRVSdU1+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB8895.namprd11.prod.outlook.com
 (2603:10b6:208:579::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.24; Wed, 11 Jun
 2025 01:10:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%4]) with mapi id 15.20.8813.020; Wed, 11 Jun 2025
 01:10:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Thread-Topic: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Thread-Index: AQHb2V4CIGhEqLwGsEaGeNooc3yVALP7HdSAgAIKeSA=
Date: Wed, 11 Jun 2025 01:10:26 +0000
Message-ID: <DM3PPF208195D8D470D1680793D6E9DE31BE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250609164548.2878908-1-suraj.kandpal@intel.com>
 <aEchEa8p0bIKXMJa@intel.com>
In-Reply-To: <aEchEa8p0bIKXMJa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB8895:EE_
x-ms-office365-filtering-correlation-id: 0cd9bc28-474f-4afc-8f65-08dda884bfb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?zmJGegIB7WnB6UikxaVMKiK00SgiqSiQE6F9tXg1t5t/7cy13hUCXq+5L9?=
 =?iso-8859-1?Q?GQlOJj07JPelcByAeRa0XhybmQq5Qeh7JEy17W2DmmAq08UysHwK2sELXU?=
 =?iso-8859-1?Q?X7f3Za61NubqqoVJPa1P/Qv/Kj8CfFIcgJBPOnWpuF8933ijviKZCo6E2R?=
 =?iso-8859-1?Q?jLjZVvKZNJ9ANqEs7OZOZ59NjKwb56zkPR2mrdKc/XK/Sv2MS+5M0xXjEy?=
 =?iso-8859-1?Q?/PkxcJGpgieP+leiqwMSGDJcjoPgSIl+nS3ae6h9yGyL4A80WJ/7mKQZdl?=
 =?iso-8859-1?Q?Y2K+PcHM9qelMw7LWixPzJoSwSC1L5KAIm4KOpHLZFxmRCL1agb3z58RRF?=
 =?iso-8859-1?Q?f3vuJNxPtcPo88MqAETQ8OY2DTyh7EWz8fRjRmp+kOODUvlV06u/hGtbqF?=
 =?iso-8859-1?Q?XOZcxcTqdbgD+I83uR8oYCewMYboKM6mdqnDyRSjX/F5qcuIIwZNOPbJpL?=
 =?iso-8859-1?Q?ISvzNGsaTPDdGD42jj1UnhzdHMbIDAaoewupcf6BIWEYmG5XEDxsazAnaV?=
 =?iso-8859-1?Q?R9rqafCQ0NGc3W4dWEQwCuwuO6bZYKhlSsEqtUg5QsTqepVwpmbm7IEtHM?=
 =?iso-8859-1?Q?wF58/UyiF93MtaboLidVtcZlHBZh5GoJiga8W/qz3IKhIgFAa9/0HGaE6R?=
 =?iso-8859-1?Q?u6i5RI1yHzEMdqV6Z3X1Bsj6TEIIo4XTC8ikiJY9/jBk929l4UBD83ZhNy?=
 =?iso-8859-1?Q?OXiFo3UmSi7zdUURIfG7NP8xp61SzyzAx/YTnPi2YW7963AW0IY1tZCla1?=
 =?iso-8859-1?Q?Mlq/75mw2/xzD6zm2IpxqEofV7NFrgSDDgwN/5iZ/cZ61d5pRq/Ao0OSe1?=
 =?iso-8859-1?Q?eEAGJSkVFEVrJHE0XGcEUcldEVjzjCuT8bmk75ntzuIb6CKdo3t4WGU5ez?=
 =?iso-8859-1?Q?x8SkL03in6WjbDjuWQDkvfEJv0XsE9u7EwaURteLE9+c/xR8wfBLWXoVo8?=
 =?iso-8859-1?Q?zymNzw1VkqR2m9j88VDylEi9BLrfGCTe4M7rNLaD/kHCLUxAn4PN/QJY3Y?=
 =?iso-8859-1?Q?Ip7lv9XQ4PzLT46IOlVGt3ZdoDmvQbYgn24keYTHPms51kvj9jGzo/puur?=
 =?iso-8859-1?Q?ldtcmy6BCSCKWb2l6vuK+nzvIQ7yMXO869Lv2DYaIJX8SM2leXrfr6bthM?=
 =?iso-8859-1?Q?4nt7z8uII6EajUKwy1jkbJsrv8YuvOk9Nmq7Nv8T0Behh6ORlJkEn7JDX6?=
 =?iso-8859-1?Q?XgsK6DiTe+ie+yF2Z8e9l2E3k6aT5yfgKSpNoa3YTcu7MA2hPi+0ek41P1?=
 =?iso-8859-1?Q?i7pjW8ynKfRmKEL/3mOXY4ADz/4TWNRqB5Pk2UUsiw9HvScn5yg8dwwmt/?=
 =?iso-8859-1?Q?p05+k9+Qfd6WxjsuYyKQHjnJ85uMbMiwTf466VxQVD5I7+kxao1jiqL+Ga?=
 =?iso-8859-1?Q?8wDIgxG76oTKhhgPQlXoav5pdTyzZZCFJu/9GVSgpanJGst170O810guc7?=
 =?iso-8859-1?Q?3V2mEOT/PPsyDLzR34LOf2KsTcT4dXjji66x31ihMFojgDPXkskp1hXmR0?=
 =?iso-8859-1?Q?UBtm3ZdY847Zkdxp3F4d4P7/wvu9x22xjISHI8q/tnFw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?hpRlg8Dgxov9NyazEzh6XUAspxDKCDEcDcTu4Nbe38N8FvakHNgusw1lfS?=
 =?iso-8859-1?Q?KK35/Oxjk5h0INuLqwATjLw3UMsbj1Wz9Bx9PozJLWrCcvfWhMj/UDa9tE?=
 =?iso-8859-1?Q?+HfcV1cZQZ1UVtm1uVCkLDCfjwDQVtxUmS3jcjVZCyK8xuQKl4VXcFc5ga?=
 =?iso-8859-1?Q?rK2x5+BMDUlj0COTBPagqCtchpBi+qSO9QoLTTtvjOb6fkXxD9mMnI7ti/?=
 =?iso-8859-1?Q?236bj2QZodUkTWHRxqTJ7o3hfuYAxmvqxy9VmMOplMihfmMS+3hHnxEX/f?=
 =?iso-8859-1?Q?iD0/DkKMIFEr7CiKwO+S/geDsHeebSTg0i6XH8Gou32w4uLxTbeDzAALJN?=
 =?iso-8859-1?Q?Npk6v52Fc8iGtonXEDZMoHHlzpSz1dKspy60lP+N01szpv7ZDb+nkmfdyi?=
 =?iso-8859-1?Q?ZZjqo6B8E3tw3Nr299P4u6Ct6m1bXkG4FtmhA0WYEWd9tQwWddZvKrf4AA?=
 =?iso-8859-1?Q?YmULWryNqM0H9jTiInwelAN3R3RPX7TpjBXdYi8CfOpPAjoHh1mE8E8vMI?=
 =?iso-8859-1?Q?FHCWRnVS5PikmFlQ4CPVxgqySKjO69CW/Tz6oIRQBkcnq8yk6T0x9T6wRj?=
 =?iso-8859-1?Q?zIkDpmxkFtlFftunZZMzqh2tp8aKsuVyaD3vqK4qoyCBdze1yDuLpPdXkp?=
 =?iso-8859-1?Q?RF74KgyxG2z87+ozN04NmmwFh0cKmSpiMipnmVdSE2gboDHoZ7M8LqzIQl?=
 =?iso-8859-1?Q?5CmGG2y7ms/oq1AET/txu7l0sAnm4fgKn0Ycd4rC96aC2IZEpMERLuH7Wn?=
 =?iso-8859-1?Q?lAdzn+Pz/oOyBoGOJCh5tXE7VOqRyTL2sbkEQHJL4MuUJ35Cgw9kAX/Q0V?=
 =?iso-8859-1?Q?g3QjFslN0BdHwPoMH4J9i7O0TLTZZvOQ4gaG2kVWEoDp5F+Htcg9ZLKtaW?=
 =?iso-8859-1?Q?lUK08LzGxWyLYqTnh2N7CkNqMSW8qiuZheqKg4SphcxtQdNVPJ8o98j/Kd?=
 =?iso-8859-1?Q?lt9q73DHn8JBs2oU+x6ivtO8UcJgH9JtnbQcGCBkpZgqamTYW62N8Pe93s?=
 =?iso-8859-1?Q?vZvYMngPCFaWOjwfb8Mvlqj+If28sOBjCLpkqRqyUk/Rc6B/aqxP3s4Zzf?=
 =?iso-8859-1?Q?69J063I0SLqf7chLfEVRS6jMsOOtJtjJeJmdPUfHku3Pl8UjVhPlglBgs/?=
 =?iso-8859-1?Q?7q1meQ2/sqA8yBC4ijqk2/LUD12VG65q/Q85FrvtxxMsZJN0mZGfhV+UBK?=
 =?iso-8859-1?Q?8ubSZ2PhDehV4NR8XELkpMBwKzkxswduie2/dDSR+pc3md4wSyVGS+eIWP?=
 =?iso-8859-1?Q?iSAjMZUGbEoE6344vhLAEhw/EWvnWF1MWY+88owswb3ZhY+EOxvB9n8v0I?=
 =?iso-8859-1?Q?I6GS8XxDcwHdV6aVvKAe7mxN7HazFeuYqDPR61fc39lL9QpdKU8DwNHd94?=
 =?iso-8859-1?Q?uTmc+mBR4vRxRmDcZ2yqWCfCQcJZZNRESTeFDCkPQoTrIFCGUknQNehysd?=
 =?iso-8859-1?Q?YiZLyOoRgednijunmangdTAmb7i8zezUz1vkXvrvut7DXh+W+bTvVGKx2c?=
 =?iso-8859-1?Q?psUhft3IxQewsT+nl50IU3KvmqJxg0DclXJzLukYpZ7adACWSWmjx5Ud/B?=
 =?iso-8859-1?Q?4fTG+898svCn2vBkHTeONrQcL1+cqgfP5eZIVeVoPhIfPfhQkg1J9ax7Cc?=
 =?iso-8859-1?Q?2vDoGDNHY8T3Xu0NT1oJrXZoq2f7E0qd/5?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cd9bc28-474f-4afc-8f65-08dda884bfb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2025 01:10:26.1604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2tsJiTRp0cBqwr9TJT31jPM3IRs9jPytXU/Zz+T9EKwrS5SmdZb7bDZlRb6zLppFzNSNxUk9XTOwMSQ/s/CLQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8895
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, June 9, 2025 11:30 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Naut=
iyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: Re: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
>=20
> On Mon, Jun 09, 2025 at 10:15:48PM +0530, Suraj Kandpal wrote:
> > We only support resolution up to 4k for single pipe when using
> > YUV420 format so we prune these modes and restrict the plane size at
> > src. This is because pipe scaling will not support YUV420 scaling for
> > hwidth > 4096.
> >
> > --v2
> > -Use output format to check [Ville]
> > -Add Bspec references
> > -Modify commit messge to point to why this is needed
> >
> > Bspec: 49247, 50441
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index d04609460e8c..2691eeb50a26 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1419,6 +1419,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
> >  	struct intel_display *display =3D to_intel_display(_connector->dev);
> >  	struct intel_connector *connector =3D to_intel_connector(_connector);
> >  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> > +	enum intel_output_format sink_format, output_format;
> >  	const struct drm_display_mode *fixed_mode;
> >  	int target_clock =3D mode->clock;
> >  	int max_rate, mode_rate, max_lanes, max_link_clock; @@ -1452,6
> > +1453,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> >  						     mode->hdisplay,
> target_clock);
> >  	max_dotclk *=3D num_joined_pipes;
> >
> > +	sink_format =3D intel_dp_sink_format(connector, mode);
> > +	output_format =3D intel_dp_output_format(connector, sink_format);
> > +	if (num_joined_pipes =3D=3D 1) {
> > +		if (output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 &&
> > +		    mode->hdisplay > 4096)
>=20
> Sprinkling random hw limits all over the codebase isn't a very good appro=
ach.
> I think we want some kind of skl_scaler_mode_valid() for this.
> And that should probably be routed via a intel_pfit_mode_valid() to keep =
the
> level of abstraction similar to intel_pfit_compute_config().

Sure will fix this.

Regards,
Suraj Kandpal

>=20
> > +			return MODE_NO_420;
> > +	}
> > +
> >  	if (target_clock > max_dotclk)
> >  		return MODE_CLOCK_HIGH;
> >
> > @@ -1467,11 +1476,8 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
> >
> intel_dp_mode_min_output_bpp(connector, mode));
> >
> >  	if (intel_dp_has_dsc(connector)) {
> > -		enum intel_output_format sink_format, output_format;
> >  		int pipe_bpp;
> >
> > -		sink_format =3D intel_dp_sink_format(connector, mode);
> > -		output_format =3D intel_dp_output_format(connector,
> sink_format);
> >  		/*
> >  		 * TBD pass the connector BPC,
> >  		 * for now U8_MAX so that max BPC on that platform would
> be picked
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
