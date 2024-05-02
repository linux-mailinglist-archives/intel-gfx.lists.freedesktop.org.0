Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8118B93F3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 06:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEBEE10EA4E;
	Thu,  2 May 2024 04:47:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MovrtiAj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D5510E1DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 04:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714625257; x=1746161257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n2nFS+LTiBHKOK1r7ff8AQGRtdeXCNEZYVbwq08Hs8o=;
 b=MovrtiAjNta16xzrfEeWopM9qyd6KTiV5kEeWsTS3cl31/vDHtats6Pv
 bP9+yAfYH/fvP8Ylqlbd7t2YonkL19MQfsklpbUGIxxQgr2WSLClnaowT
 WSaUBkbnDDNJpX9Avgmn6GKb/vbZyNHo53UdJKwRtuCBsiF0KXH1tcGYM
 UcU9Zz77vYiOtl9vdlYgl/HFSdD7pBLbGAOARwZvwtuk0CD7bU2hXOWQy
 kbS0IBWmFy7fWf8amQ44/IFexHfrXzhZtKqUMyHfDSk+qY8/vL5bgOu0A
 ujCn3tYk5yDi45nBTyt2eaIh4SxWD63Ipajb9AI3+1pANNxvvmcJtgqD0 w==;
X-CSE-ConnectionGUID: XWNzoDmpQKaB1v1EPCbKzg==
X-CSE-MsgGUID: dKzUxlOZTMWXHVcOcUnGwA==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="35761972"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="35761972"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2024 21:47:36 -0700
X-CSE-ConnectionGUID: NYPIf/7ZRqmklKFhNC9e2w==
X-CSE-MsgGUID: mNLKIYtKRM+h6R9l23AN2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27109005"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 May 2024 21:47:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 1 May 2024 21:47:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 1 May 2024 21:47:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 1 May 2024 21:47:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 1 May 2024 21:47:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IH6rp1j7DvIq2wkuvd8y9TYOIBsiIEvQ7e+ZMgeqBBpaoOa6ez0z1ybbJlkuI21nJGs1OZNUsSla7BKDfB9HZTTntUNUmo7SVVKe3UzmfqXE5y+jmmO++CJhPih4d15ztzuALz7K8W0GJq329Z4e/KRjwK5jmjinMGj6+DSkeTNSa/S8aETthKsEibt5PPtsZLNwYOQ00u4nt1xTJoYj1DX8fOKzBX9exwWNEvDwusiNIrOs9wTG2SPMaWRj3zTRPXZFcTHo2QBt3UhwVIbK6dWttZKyewmufprgzBgregItfrULXZmNv5ngAKDI1hdddTmH8pr055PKRqUXmW0R2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pQ36WqkjS80O0nGMUFlnElSFPB1vU7DIxz+UR7uiaz0=;
 b=M/cpqezAGZN5/rJND9vCA3a9/Nv+O57cf9re8wCaARJsh0S6cvV0FgWl3ytAurJqoFIqxT8SVXbMWgnAN59g50g4fjApxnbB7lRsdnJgK9AQNxuj0yFshnyJLGDqnubZG7YpyrcmjQAW28pbK5c0zVLZAMneG+HtqFbv8OYNuCHLBCy/CfrTvoYmPp2mv9etwTuRgpH4WAd5V58F6Q4wSLssNHcl9fjrbkTpznF4TBrNtpZvPKBvk2ORg5NpvZML0tz5FbRuw9vreVAd56YLAGjI+aZB1vqYxmg20LuiNehhOTUHdqTzFUP3BeD4Kip5OPCotV/4cIua1qPVKZEgvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CYYPR11MB8305.namprd11.prod.outlook.com (2603:10b6:930:c1::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7519.35; Thu, 2 May 2024 04:47:27 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7519.031; Thu, 2 May 2024
 04:47:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vehmanen, Kai" <kai.vehmanen@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "Yang, Libin" <libin.yang@intel.com>
Subject: RE: [PATCH] drm/i915/audio: Fix audio time stamp programming for DP
Thread-Topic: [PATCH] drm/i915/audio: Fix audio time stamp programming for DP
Thread-Index: AQHamuA5aX/FQZdhikO3GWrItpJifrGDYVlg
Date: Thu, 2 May 2024 04:47:27 +0000
Message-ID: <DM4PR11MB6360F4AB550A7D883E8E8B20F4182@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240430091825.733499-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240430091825.733499-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CYYPR11MB8305:EE_
x-ms-office365-filtering-correlation-id: 430eba53-ffab-42a6-340b-08dc6a62f7c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?tlsnnIpRvOvoQshAgT2EQSyNEPegbq0Ae4hx+w2p1W7Xwc0kkJVrabi0k2Ou?=
 =?us-ascii?Q?GxPQ5oKxrT1Amn+ZIbz4aYCT9JpuOdWvoLIZB2wwSLb53hOvuVI9PN3oSKD5?=
 =?us-ascii?Q?wDMp0/LTX+csoaYZ3i66eF0bzqCOL0Sqr9cC1ao5wq4Uw8wgw8JOaanqx0GB?=
 =?us-ascii?Q?rxLbH7ELCeziR+0BkIo810pLD3S/matPqa72eeQANwFzzZPICsj0Kmu09dDe?=
 =?us-ascii?Q?fMjp+zS3ABBB40I1qLpSOnF11YcThT8iVqQop+ouyH8T/G/w3khZ8+3zNYF+?=
 =?us-ascii?Q?N2rvtOYSO+saR1gMsyu4aP7AhxRSRxZb7QkNZHCsAVmkiPtZ1/jomvGMoMdK?=
 =?us-ascii?Q?dOXr8caeTBoFHV5/FDPk139sZAz6vsY1AzjsX7SjQpqF7u+xQuwtTR0FUJeB?=
 =?us-ascii?Q?s24lgKyY/xEM+GaaBpaLA1vq1WSGNl8ZK3t/NyVyFbUyVejftTgiNEMsrKFz?=
 =?us-ascii?Q?P08AkLrFLhXlix6ImrgIttQbBPkMHajhmGwTQ9Y6m0AwD8l3k9GCEx5gMNVy?=
 =?us-ascii?Q?gE2PdyJlbq6YBpAaiaLxliAa9sQSRwQ5HUzfocM8ESeFM/BoJumPEeBLv1Wu?=
 =?us-ascii?Q?yWnVF1irtMdZzW0U80yYUohwWjySZgTxPs+eXw6iBF9PcOssEylOLm4p0wQj?=
 =?us-ascii?Q?rYHUPWuv3Bw5RODIB0lLQc33GGEng9BX5eHOed1fZ3XFy4UwzVk6EgS3YnLg?=
 =?us-ascii?Q?M9lB9fQn6YRAsYW7aCSBre3Mln5vVKYlpUS5jQgnFcCkERWeoh8h2Yl4big1?=
 =?us-ascii?Q?JwcBh70bnWAY2rV8kEhv0FM8k+suO6n42khXuvAvB4PZCFD3B5Byupvvq/MZ?=
 =?us-ascii?Q?EpGvCPSAC+GwfbDvE0H0RGQpiNkB6vo9Io+yjs4BUlgGdkVktWywu7mCM6+6?=
 =?us-ascii?Q?a8VGytHo1+G+Wb5wKV97IIDBW1gh0kZw5oReRDc0lm5lhUwMu7zGeco6i1PJ?=
 =?us-ascii?Q?XwxeaRyqdCab1Tu29z3nB6JZRC7wE1dA5K2FVoWLmJ+7hGWHpeXKoLq+JQWs?=
 =?us-ascii?Q?ChOiZQaZdJ68ZQ9SV1YS8cpEyn7kxgE9UhaYyTO3odIlEXDDROK3xSvRnhdo?=
 =?us-ascii?Q?J3OMrKzTTl0TgCyZ6c4PqLLTJi9NGTolN/BWc9cRqFJU3O1bH/iXo45sjKTM?=
 =?us-ascii?Q?fcZdNMiGm7sAM9iA/Af7BP5ap5xEwc90Xbx8SvsezK7K7CggOmUxEbvd4x9s?=
 =?us-ascii?Q?85CH1b0riMbMA2W0WTvdXCDALg5zG9pXkAhI/bzEOkxSZ3PWg/G+9xurEeDr?=
 =?us-ascii?Q?VDmWVJGy0NgpSM/ZtlP770IwzvgmgqbK3yRMgYkLmQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3mpulVit+rnzAZ0VBsk8EUb9PWXeqOhlx7Jg8y9g/TcHPiHdafwoUugndZ07?=
 =?us-ascii?Q?1deviibKHf0mG+mXDw9vCpP44NKSPZ/azglA9P0dUDGEJVDGG+ZCOFUTyuYz?=
 =?us-ascii?Q?eQcJkP71whLkGtAD24lNEABk6CyzhCnMCljEkBaBWKhfGvPpN0aunFloozL6?=
 =?us-ascii?Q?o7jG9HKas5q0Z2e9i0qmvl03/LNoLLSxu57ImLIW6aiBYR0QZsEJLYnRR3Fn?=
 =?us-ascii?Q?Rd5c+vVhaMxSk4tPJlpAPqaH5zN2k37vKxss2y+cXebDcMy4HMme2W8uVc+E?=
 =?us-ascii?Q?/S5heHIVw6ZzoNjcpZiMStsC4XugNkUIW3K/roNYcDPc+pQbruItdtHJCEqD?=
 =?us-ascii?Q?P1xX5pH0l+yYSf2B6J2sGDlKEpz28IHwAIeTus+fyKCUGq0op4yDdjBiU8HT?=
 =?us-ascii?Q?A++Me3UPAfghPiH475CbhR1HahTZ44S3ttNTOQ6vSSYboKTzGqZljAFRLUGc?=
 =?us-ascii?Q?IxegEVLkRX14rIeECOtFLIHXdAeaunS3kfovLN6B+DgreQ4K0vb9sv67Xolt?=
 =?us-ascii?Q?YWZyvf7obcnqZ4cp09w+E+8pbOxZjwbLgQHouvrR90p78045d1he0Ja9tk2l?=
 =?us-ascii?Q?hVVd8aaxEqj5hdx/GoIdvuFdRgio/cROaRoNt3roT5T1FejqZ8P/JfPouajm?=
 =?us-ascii?Q?9bbDeAlgFW+8gJl4YC5Ico7a5wciXXYlKEEb62Rr1VzKJbGkuMWKUl5pFBmS?=
 =?us-ascii?Q?on5Dk3ImQGlKdxIH8H9DM2T0PpyWMWn/pg2Ivy9okEwQecniS5oYII5u7vkV?=
 =?us-ascii?Q?GqCY2qYRIvP7bbYuZZQHlMUTCBn9/gRyxYfq4Tk85Hkm3JtVoWWWo3ym0VoN?=
 =?us-ascii?Q?M7aAw8Nzn0SOpbuhCgy6UGitBsLdITYJf1FUxAMBW1sn6sdklMma8sOV5HjC?=
 =?us-ascii?Q?KzW0J7ycXtKkSRK0fvJNZQNv/CHWgiZ5xGxPlrF0xO74NCYC1jXhPhlRmIob?=
 =?us-ascii?Q?0Q5ethDPa9WWvEI6f/5CiVf+jliURYa3PNxVr5UjCXfE4y+e8+8tKziG/GVx?=
 =?us-ascii?Q?dbxjeqMLcdbNXuVJRz9z67DLqI7OawvRmYBhQNpvjNYY5LujweqtNqxB6gLQ?=
 =?us-ascii?Q?UIc5Ykdv5/biqXLuAb7oJUY0WY/E6HCRgivuvyYE6r9bF88M1fR+8XyGGiBs?=
 =?us-ascii?Q?TsVeXpQQW3oY4ax4t7HPLBzcOJwEwUZyOoMEH5Uvh6SU0U7wqPdqJQF0lxbX?=
 =?us-ascii?Q?Cn67+OOsy0Q+Cs5SGkmlRUbYce0BS51cizAFwetGhkgAVv+flSoOFNkCeUHd?=
 =?us-ascii?Q?8PwdKNFtjkJCxJVIEsYM2GTMZu/wQ+sI37hwhOb9rJE6yO2gXbZ0l8rT0jNw?=
 =?us-ascii?Q?BUtuBoHXuiR2r4cz3s6ubRY8CPOF/DSJdAlNzKJ847PlwD9qrI+PChDCXjJn?=
 =?us-ascii?Q?1sCUhMb4TSmMvUhq+6E7Eipxcu/A6cYcMzUzj0vru7faFEXhiK/JiMUw4qpm?=
 =?us-ascii?Q?zSdMwuTwFqvVQSOGpDF4DiaKLBf0uk5KFRR/4SeC5LVVBs1/xJKwEyKLAcCj?=
 =?us-ascii?Q?OQjL27zR6+YdIvZCKaG/Afac9WaRTNdHPehdpsxUUyUJG66P03eZ3xGQvnaM?=
 =?us-ascii?Q?5QPSmUET4bK6ZdyhS8Agskei/322SCtNWVg+U7RtSgUMuSW7KMjlPXqW+1Yq?=
 =?us-ascii?Q?ZJerQaTWpW3hEkTm5UugStvr41EiwHx0ZqbQVsqmO+bE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 430eba53-ffab-42a6-340b-08dc6a62f7c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2024 04:47:27.6065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RaTrWrEXmjCcBoVdQVR9I2/QGFT7Aedocb6AHbreRpIhARoqgoeirlnQMhDCDOTiutTDz4BEZoDc3pwJ1eouNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8305
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Tuesday, April 30, 2024 2:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vehmanen, Kai <kai.vehmanen@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com;
> jani.nikula@linux.intel.com; Yang, Libin <libin.yang@intel.com>; Shankar,=
 Uma
> <uma.shankar@intel.com>
> Subject: [PATCH] drm/i915/audio: Fix audio time stamp programming for DP
>=20
> Intel hardware is capable of programming the Maud/Naud SDPs on its own ba=
sed
> on real-time clocks. While doing so, it takes care of any deviations from=
 the
> theoretical values. Programming the registers explicitly with static valu=
es can
> interfere with this logic. Therefore, let the HW decide the Maud and Naud=
 SDPs
> on it's own.

Based on internal discussions with hardware team and validation on various =
platforms,
Maud/Naud programming can be dropped. Looks ok to me.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: stable@vger.kernel.org # v5.17
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8097
> Co-developed-by: Kai Vehmanen <kai.vehmanen@intel.com>
> Signed-off-by: Kai Vehmanen <kai.vehmanen@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 113 ++-------------------
>  1 file changed, 8 insertions(+), 105 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 07e0c73204f3..ed81e1466c4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -76,19 +76,6 @@ struct intel_audio_funcs {
>  				       struct intel_crtc_state *crtc_state);  };
>=20
> -/* DP N/M table */
> -#define LC_810M	810000
> -#define LC_540M	540000
> -#define LC_270M	270000
> -#define LC_162M	162000
> -
> -struct dp_aud_n_m {
> -	int sample_rate;
> -	int clock;
> -	u16 m;
> -	u16 n;
> -};
> -
>  struct hdmi_aud_ncts {
>  	int sample_rate;
>  	int clock;
> @@ -96,60 +83,6 @@ struct hdmi_aud_ncts {
>  	int cts;
>  };
>=20
> -/* Values according to DP 1.4 Table 2-104 */ -static const struct dp_aud=
_n_m
> dp_aud_n_m[] =3D {
> -	{ 32000, LC_162M, 1024, 10125 },
> -	{ 44100, LC_162M, 784, 5625 },
> -	{ 48000, LC_162M, 512, 3375 },
> -	{ 64000, LC_162M, 2048, 10125 },
> -	{ 88200, LC_162M, 1568, 5625 },
> -	{ 96000, LC_162M, 1024, 3375 },
> -	{ 128000, LC_162M, 4096, 10125 },
> -	{ 176400, LC_162M, 3136, 5625 },
> -	{ 192000, LC_162M, 2048, 3375 },
> -	{ 32000, LC_270M, 1024, 16875 },
> -	{ 44100, LC_270M, 784, 9375 },
> -	{ 48000, LC_270M, 512, 5625 },
> -	{ 64000, LC_270M, 2048, 16875 },
> -	{ 88200, LC_270M, 1568, 9375 },
> -	{ 96000, LC_270M, 1024, 5625 },
> -	{ 128000, LC_270M, 4096, 16875 },
> -	{ 176400, LC_270M, 3136, 9375 },
> -	{ 192000, LC_270M, 2048, 5625 },
> -	{ 32000, LC_540M, 1024, 33750 },
> -	{ 44100, LC_540M, 784, 18750 },
> -	{ 48000, LC_540M, 512, 11250 },
> -	{ 64000, LC_540M, 2048, 33750 },
> -	{ 88200, LC_540M, 1568, 18750 },
> -	{ 96000, LC_540M, 1024, 11250 },
> -	{ 128000, LC_540M, 4096, 33750 },
> -	{ 176400, LC_540M, 3136, 18750 },
> -	{ 192000, LC_540M, 2048, 11250 },
> -	{ 32000, LC_810M, 1024, 50625 },
> -	{ 44100, LC_810M, 784, 28125 },
> -	{ 48000, LC_810M, 512, 16875 },
> -	{ 64000, LC_810M, 2048, 50625 },
> -	{ 88200, LC_810M, 1568, 28125 },
> -	{ 96000, LC_810M, 1024, 16875 },
> -	{ 128000, LC_810M, 4096, 50625 },
> -	{ 176400, LC_810M, 3136, 28125 },
> -	{ 192000, LC_810M, 2048, 16875 },
> -};
> -
> -static const struct dp_aud_n_m *
> -audio_config_dp_get_n_m(const struct intel_crtc_state *crtc_state, int r=
ate) -{
> -	int i;
> -
> -	for (i =3D 0; i < ARRAY_SIZE(dp_aud_n_m); i++) {
> -		if (rate =3D=3D dp_aud_n_m[i].sample_rate &&
> -		    crtc_state->port_clock =3D=3D dp_aud_n_m[i].clock)
> -			return &dp_aud_n_m[i];
> -	}
> -
> -	return NULL;
> -}
> -
>  static const struct {
>  	int clock;
>  	u32 config;
> @@ -387,47 +320,17 @@ hsw_dp_audio_config_update(struct intel_encoder
> *encoder,
>  			   const struct intel_crtc_state *crtc_state)  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D i915->display.audio.component;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> -	enum port port =3D encoder->port;
> -	const struct dp_aud_n_m *nm;
> -	int rate;
> -	u32 tmp;
> -
> -	rate =3D acomp ? acomp->aud_sample_rate[port] : 0;
> -	nm =3D audio_config_dp_get_n_m(crtc_state, rate);
> -	if (nm)
> -		drm_dbg_kms(&i915->drm, "using Maud %u, Naud %u\n", nm-
> >m,
> -			    nm->n);
> -	else
> -		drm_dbg_kms(&i915->drm, "using automatic Maud, Naud\n");
> -
> -	tmp =3D intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
> -	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
> -	tmp &=3D ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
> -	tmp &=3D ~AUD_CONFIG_N_PROG_ENABLE;
> -	tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
>=20
> -	if (nm) {
> -		tmp &=3D ~AUD_CONFIG_N_MASK;
> -		tmp |=3D AUD_CONFIG_N(nm->n);
> -		tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
> -	}
> -
> -	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
> -
> -	tmp =3D intel_de_read(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
> -	tmp &=3D ~AUD_CONFIG_M_MASK;
> -	tmp &=3D ~AUD_M_CTS_M_VALUE_INDEX;
> -	tmp &=3D ~AUD_M_CTS_M_PROG_ENABLE;
> -
> -	if (nm) {
> -		tmp |=3D nm->m;
> -		tmp |=3D AUD_M_CTS_M_VALUE_INDEX;
> -		tmp |=3D AUD_M_CTS_M_PROG_ENABLE;
> -	}
> +	/* Enable time stamps. Let HW calculate Maud/Naud values */
> +	intel_de_rmw(i915, HSW_AUD_CFG(cpu_transcoder),
> +		     AUD_CONFIG_N_VALUE_INDEX |
> +		     AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK |
> +		     AUD_CONFIG_UPPER_N_MASK |
> +		     AUD_CONFIG_LOWER_N_MASK |
> +		     AUD_CONFIG_N_PROG_ENABLE,
> +		     AUD_CONFIG_N_VALUE_INDEX);
>=20
> -	intel_de_write(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
>  }
>=20
>  static void
> --
> 2.25.1

