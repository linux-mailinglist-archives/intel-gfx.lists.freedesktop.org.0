Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED1FAB37EF
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7117710E3E4;
	Mon, 12 May 2025 12:57:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="rX/oC+DX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C991910E3E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:57:19 +0000 (UTC)
X-CSE-ConnectionGUID: C/bJtNYQQx2fdniOvl+vCw==
X-CSE-MsgGUID: DAlM/ybLSfmvetULQRh34Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="52657681"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="52657681"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 05:57:20 -0700
X-CSE-ConnectionGUID: m90WDuLlR82xXYBmH5Ccew==
X-CSE-MsgGUID: mS+FvZxYQISVRodLuFCjQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142124266"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 05:57:19 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 12 May 2025 15:57:15 +0300
Resent-Message-ID: <87bjryj8b8.fsf@intel.com>
Received: from DM3PPF90FB92BE6.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f38) by PH7PR11MB6428.namprd11.prod.outlook.com with
 HTTPS; Fri, 9 May 2025 09:22:42 +0000
Received: from MN2PR16CA0062.namprd16.prod.outlook.com (2603:10b6:208:234::31)
 by DM3PPF90FB92BE6.namprd11.prod.outlook.com (2603:10b6:f:fc00::f38)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Fri, 9 May
 2025 09:22:39 +0000
Received: from BN3PEPF0000B36E.namprd21.prod.outlook.com
 (2603:10b6:208:234:cafe::1f) by MN2PR16CA0062.outlook.office365.com
 (2603:10b6:208:234::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8699.31 via Frontend Transport; Fri,
 9 May 2025 09:22:39 +0000
Authentication-Results: spf=softfail (sender IP is 134.134.137.100)
 smtp.mailfrom=amd.com; dkim=pass (signature was verified)
 header.d=amd.com;dmarc=pass action=none header.from=amd.com;
Received: from edgegateway.intel.com (134.134.137.100) by
 BN3PEPF0000B36E.mail.protection.outlook.com (10.167.243.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.3 via Frontend Transport; Fri, 9 May 2025 09:22:39 +0000
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 edgegateway.intel.com (10.7.248.4) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 02:22:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 02:22:34 -0700
Received: from orviesa003.jf.intel.com (10.64.159.143) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 02:22:34 -0700
X-CSE-ConnectionGUID: GxBPWZQdQPCOh3mxTi5BbA==
X-CSE-MsgGUID: shNveH3eTAmS/iqIJL604Q==
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="141344115"
Received: from fmvoesa112.fm.intel.com ([10.64.2.22])
 by ORVIESA003-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:22:34 -0700
X-CSE-ConnectionGUID: GNz5qpEfSt6nR4cxRtODVA==
X-CSE-MsgGUID: EOK9QoDHQ2WGx36CKh8Vhg==
Authentication-Results-Original: mgamail.intel.com; spf=None
 smtp.pra=Wayne.Lin@amd.com; spf=Pass smtp.mailfrom=Wayne.Lin@amd.com;
 spf=Pass smtp.helo=postmaster@NAM12-MW2-obe.outbound.protection.outlook.com;
 dkim=pass (signature verified) header.i=@amd.com; dmarc=pass (p=quarantine
 dis=none) d=amd.com
IronPort-SDR: 681dc959_ID2M7gxpXgFWKfXrL11PSBW525s0d0rdXUWV0kFSgs3rWmD
 wgk+FfiwGVFpxUzEsPPrrdoko1Bdj9irPagE/OQ==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EKAAAoyB1ogzf0ayhaGwEBAQEBAQEBBQEBARIBAQEDA?=
 =?us-ascii?q?wEBAUCBPwYBAQELAQGBcFI/gRsxB1GEGTyDToROX4h2mD2EMYErgUA+DwEBA?=
 =?us-ascii?q?QEBAQEBAQcBAVEEAQEDBIUAi0sgBgEEMAkNAQECAQIBAQEBAQMCAQIBAQEBA?=
 =?us-ascii?q?QEBAQEBAQsBAQECAgEBAQIBAQIEAwEBAQECEAEBAQE5Bw47hXsNSQEMAYIEg?=
 =?us-ascii?q?SxeSAEBAQEBAQEBAQEBAQEBAQEBAQEBARQCDV4BASAQBhEECwENAQERJgEYH?=
 =?us-ascii?q?AImAl4KBAUigmCCIwRFAwECApZhj10BgUACAoopen8zgQGCDAEBBgQDAgLcF?=
 =?us-ascii?q?4FlCQkBgREuAYVsgmMBgW2DD3CEdzaBVUSBFYE7gi1rGgGHGIJpg0eQQ4RSi?=
 =?us-ascii?q?WUJP4EFHANZLAFVEw0KCwcFgWkDNQwLLhUyPDMdgXQbfIQfPoE3HIsShFEtS?=
 =?us-ascii?q?AdTUIMecIEogW9AAwsYDUgRLBQjFBsGPm4HlhiCemsGAXsTQ4EBUBp4kkAdg?=
 =?us-ascii?q?zSMZYIdgTifIDQHhB6BZAyJCI9RhwRNhFCTA5MHLodlkG2jYxlQhD4CBAIEB?=
 =?us-ascii?q?QIQAQEGgWc6gVwzGiODN08DGQ+OIQkDCwIJg17CfTgzAjoCBwEKAQEDCYtGh?=
 =?us-ascii?q?H6BSwEB?=
IronPort-PHdr: A9a23:SiWdXBxhfb+Auy3XCzKnx1BlVkEcU1XcAAcZ59Idhq5Udez7ptK+Z
 xaZva0m1g6TB9mTwskHotSVmpioYXYH75eFvSJKW713fDhBpOMo2icNO4q7M3D9N+PgdCcgH
 c5PBxdP9nC/NlVJSo6lPwWB6nK94iQPFRrhKAF7Ovr6GpLIj8Swyuu+54Dfbx9HiTezf79+N
 gm6oRneusUIhYZuNLg9xxTUqXZUZupawn9lKl2Ukxvg/Mm74YRt8z5Xu/Iv9s5AVbv1cqElR
 rFGDzooLn446tTzuRfMVQWA6WIQX3sZnBRVGwTK4w30UZn3sivhq+pywzKaMtHsTbA1Qjut8
 aFmQwL1hSgdNj459GbXitFsjK9evRmsqQBzz5LSbYqIMvd1Y6HTcs4ARWdZXshfSTJMDJ6yY
 YUMCOQOMvpXoYbmqlsSrhazHxWgCfnzxjJKgHL9wK000/4mEQHDxAEvH8gBsXTSrNrrKawcV
 +G1zK/VxjjEb/xZwzf86I7WfRw7p/+MXLRwfNHLxkkqCgzJlEmfqYvgPz6M0OkGrmeU4fZ6W
 +21l24ntx9+oiKpxso0iYTEiJ4Yx1HK+Chnwos4Jdy1RVJ6bNK4H5VduC6UOoV5T80iTGxlt
 iU3x7MJt5O/ciUHx5UqygLQZvGZc4aG7BTuX/uSLzdgnH9od66ziwyv/US8yODwTNe43VlFo
 yZfktTBtmgB2wHS58WHUPdx4Fut1DmV2w3Q5exIO104mKjdJpU82LA/jIATvl7GHiLumEX5k
 quWdkI89+aw9+npZajqqoGFO4Fzig7yLL0imsukDusmKAQOWHWb+fin273k4E35RqhFgucuk
 qnDt5DaOdoUqbKlAw9U1YYj7QyzDzC70NQEmXkHK1VFeBGdg4f1PFHOJej0Dfa5g1uyjDdm3
 //LMqH7DpnQMnTOkq3tcahy5kNT0gY+zdBS64pRCr4bIfLzXkHxtMbfDh88KwG7w/zoCdV71
 owAQ26BBK6ZMKXJvFCS4+IgPvOAa5MSuDb4M/Ql/eLhjWclmV8BeqmkxZkXZ2q+HvRnOUmZZ
 3vsgtQcEWcOpAUzV+3qiFueUTFNY3a+Rb4z5jY+CI6+C4fMXZiigKad0yejAp1WemdGB0iRH
 XvweIWLRfAMZiGILMJ5nDMKSKCtS5U/2hGwtwH00aJqLu/O9S0ZsZLvzd115uPNmRE07zN0C
 tmR33+KT2FygG8EWz870aBlrUx611eDzbN3g/tFFdxV+vxFSB86NYTbz+xmFd/9Rh7BftaOS
 FagWNmmBiwxTs41w98JZEZ9GM+ugQzE3yqvG7Mair+LBJ0x8q/ExXb8O9tzxWve2KY8ilkpW
 NFPOnG+i6Bl6wXdGpPHn12Cl6aye6QRxDTD+Xuew2STpE1YSxZwUavdUnAfeETWqdP561vYQ
 bKyFLopL1gJ9cnXfqdQa5jlgEtLQN/nOc/CeCS/gWq9CRuTxa+LdMztYWpLjwvHD01RrAkC+
 3vOEQk4TnOeqnPYAXpKFFTHakbgt+J5rSXoHQcP0wiWYhg5hPKO8RkPiKnEIxtu9qxR4XRpo
 mBuB1/4xNLfUYfe9EJqKb9RZdot7VsAz2/dvhxwMs/oI/Vrg1JYeANy7Av1gg56DohLjc8w9
 SBPrkJyfIyC11YTWzqE0MLLJ7fVJ2LurjWicLXf1Vyb8frE0aAJ9Pk+txDfrRmkRG8D1lgi7
 dRPyHqb4Mf6SS8pFL/hWUY+8Rd34orXZCUw/ar4/n1hOqrn112K0dJ8G8Qm6TmOL494DYyfM
 1P5Q/MxWNeIKL0si3aTQTAlOL5JyoI9G5qgcdeJx/v4WYQolme8vSNAy8NR4mPSzyR2Vdfq7
 71YnPzf/iyaWgrl1k2MtMSmno9PfhASQnHg+SHhKLVzNp95IocmVGSSLdOO2/lSlqbyXiRK8
 AOaPXkghtCReECqNQeh+U5CyWUxplz2kxGp/zBEiw8orqme3Qvo5MXCaTEGJ0BRfDlDqVnCD
 IvrpssrQnGQaxlymAOV2GG9nbULno52bDDybxdRQTGrCGhtA6Ht7b+kao1V88994m1HFeWmZ
 laCTaTh5gEXyD7nAz5GzSsgJFlCyb2h2zB/gXiWFnt4q2DVK4lokA7C7cbVQ+JQ2DdCDDFzl
 WyOXgD4d8KxqJHcnpvAs+XrTSbpX4ZLf3zxicuaqSLu1i0lDRi2hfuEk9LoORYz1S692txjV
 CGH6F6lOtW7ivvkaaNSOk9vAlKUA6tSH453l4IxgNcR32QXgtOe+n9U2XzrP4B93qTzJGEIW
 SZN28TctTfsyUtuaFaIwarwU3nbycxkNJGhem1D4ism9IhRDbuMqrlNnC97uF29+D3YcP5w2
 BMcz9Mn7XJciOYM60I21ivIOrkJBgFDODD00RSF69frtKJMeGOmaqS9zmJYtPX4VvSnnVsZX
 3z0PJA/ASV388NzdkrW12H+4Z3lf9+Was8PshqTkFHLiO0GYJ4yl/9fnSN8Iiq9pnwqzecnk
 AZjlY+3pomJKmhhveq5DxdUOyezZpY78zThy61Zm5Xe04WmBJ40AjwQR9OoVaexDTsIvPL7N
 gCDWDE9sSKdHrzSXEeTvU5jozTEFJXD22i/An4fwJ0iQRaUIUVehEYVWik3mtgyEQX4jMrmO
 Fx04Dwc/BbxtwdMx+R0NhL+Tna6xk/gazE6T4KaJQZX6QcK7lncMMiX5OZ+Vy9C+ZjpoAuII
 22dLwNGRV4AS0qJQXTiOJGn4NWG+O+dR4/cZ7PPbbiIte1CRqKQ35v8moBi/juKKoCOJiw+V
 7tighUFBywlXZmEyFBtA2QNminAbtCWvkK59SRyp8G7tvXtRA/ro4CIDug3U50n9haojKOEL
 +PVijx+LGMS6Zodw3KO7LkZ9FcXh2dlcDznQtFi/WbdCbndnKNaFUtRVCpiMsYOy6M69gBIN
 YjQjda/hdsaxrYlTlxCU1LmgMSgY8cHdnq8OF3wD0GOLL2aJDfPzof7Zry6RqdZgOhjrwe50
 dqCO3fqJS/L1zzmXhWmMOUKjSeHMRgYs4a4IF5hDm3qTdSubRPeUpc/sjQnx7ByonLMHWcZP
 X53dEYForCL7Cxei+lyACQdtjw8dbbCwXrFqbSFYp8N+eNmGCF1i/5X7BFYg/NO4SdISeY00
 Creo9hyok23x+yGyz5pSh1L+X5AgIOGu1knOL2MqsEGAC6bukhRsSPNVkdvxZMtENDktqFOx
 8Kaka36LT5D95TV+9cRA47fL8fUVRhpeRfvBjPQCxMICDCxMmSKzXNUgfefsFmUqLAzr5Sqk
 50LAOw+NhR9BrYBB0JpEcZXaqh+TzUp15qaiuYB4Hb4px7UDpY/3NiPRreZBvPhLyychL9Pa
 k4TwL/2Go8UM5Xyx01oblQ8kIPVHUXKVNxAlTV7Z1xRwg0F4D1kQ2Y0wU6gdhK17SpZC6uvh
 hBvwFg2caE3+Tzr+VtyOlfauH56jhwqgdu85FLZOD/pcPXsBccHUWys8RB2a86zQh4pP1Hq2
 xU8a3GcAeoW1uUodHg32lKG/8IXQbgEC/UDOUJ1p7nfZu10gwkG7Hz/nwkfo7OCUMUqlRN2I
 8P26SsYgEQ7KoZyfPOYJbIVnAEI2uTS4WnwkLh2mVB7RQ5F8XvMKnQB4BVab+B/dST0prQ+u
 0vey3NCYDZeDfNy+6AzrxpvNbjYlHCylOISTyL5f+2HcfHDsjCZx5fRGwE+ihtTxRkdpeAkg
 4B+KgKVTx59lrLJTkZQbJOQJ10NNJhZrCCLL3TJ7Lyoo9o9Pp3jRLrhFbbc7f9N0Ez4RF17E
 dxUtpZTWcT2mATRKcOtRFIc4S0k/x+jZFCKBfFAeRbNkTEbrsX5x5hyj8FRITQUAGM1NivSh
 P6fvggxnP+KR8s7eF88d65dbDcTZ5f/nCRU+XNdEDOwz+QVjhCY6CPxrTjRCz+6aMd/YPCTZ
 lVnD9TTm313/6WtiFHR+4nTPCmmbZI74oCJs79G4cvaQ/pPBaFwqULdh5VVSzSxXmjDHMT0b
 5n8Zo8wbMDlX3a3Vlvs7lB9B8z1PdurMu2JmVS0HcAN6Nbdhmx/c5LgRXkEFhx9pv8O/vd5a
 gQGaps/Jx/uqwk6cae4JVT9sJ3mTmCzJD9RV/Qaw/+9Yukd8CM9aOL87HomZpg/w6+89ktHF
 /RoxlnOgO2uYYVTS325AntGZwDGvjY0jUBHH8NrmKIa/0mNtlMRdTeWaOZudWpI+ckmAk+fK
 ml3DWx+QEKAiY3E4Uin2LVYrE4/155ElOZCtnb5pJrWZjmhDbeqpZviuC0lddE6oqd1PMrvJ
 dSAu4nXkjHoVIPZ4WjnGGaqUuBXkd9KLGdEUeFFzCs7bNcet9MLugIhE90zLLtVBOwwq6C2P
 HB6WDUKw3Z8NcvI3SRe0LvkneqA0E/WKNN7bVQFqMkQ3oNbCnYpJHtY/Oj6Cc3XjzPWFzJNe
 V9Lq1wKvEVZy+oSNqjk+NaaEcUKkmYM5aoyCmySSNFp7wepFzvQ2ACjDq3ny6vwgkpT1K6+i
 4FHHkIgTxAbn6EPyS5KYPl2M/dC5IeS623RLBqosj61kLn0YwUBgczMKQ+iBdKc5zOlC38Sp
 SVPF90IlCC6d9xakhInOvwi/Aweedn/KEiiv2d2l9wxR+vqEp3yj1c98yRcTn/zQYMYUrNo7
 AqMCjY9O8j5+tK4YvAwCidR4MPP8V4ByRc0anfrx8YEcJNDumZUDmoI/G/V+dK2TIcrMSBeB
 poAZNx4viWkcEuhEJGUrzs9vbm9khcxGhgamXLjnnCWJPX9SOhUuWoDBg8uOmKS7FE1CPch+
 XvT9VaLtU1o++BcBf6EikAj+V5A
IronPort-Data: A9a23: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
 gA/q7ASNO4OjTRsYw==
IronPort-HdrOrdr: A9a23:u1HBMaj99Jxfb8XtFrR0vu741XBQX8513DAbv31ZSRFFG/FwyP
 rCoB1L73XJYWgqM03Jmbi7Sc+9qBTnhOFICOgqTMuftWzd1FdAQ7sSlbcKrweQfxEWldQtqJ
 uIEZIOc+EYZGIS5amVkWrIcadE/DSeysDY9Ns2p00dMz2CAJsQljuRZDzrdXGecDM2dabRWa
 DsrvZvln6FQzA6f867Dn4KU6zqoMDKrovvZVo8Cxsu+GC1/ESVAOqRKXml9yZbdwkK7aYp8G
 DDnQC8zL6kqeuHxhjV0HKWx4hKmfP6o+EzRfCku4wwEHHBmwyobINuV/mppzYuutyi714sjZ
 3lvwogBcJu8HncF1vF7ycF4zOQkArG1kWShWNwwEGT7PARfQhKQfapULgpPScw6CIbzaVBOe
 xwriGkXqFsfGb9dRTGlqv1vi5R5ziJSAIZ4JQuZlxkIP0jgexq3MUiFQVuYdw9IB4=
X-Talos-CUID: 9a23:9oe3Km4g+x+xEw5bDNss22gGR9k9X3Pm0CnWGROzGVx1b5GrYArF
X-Talos-MUID: 9a23:CkPFEwo/V+QM8bCfnYIezxxFF5ZR5IiOMRoyvoVd5eKnNXxOOzjI2Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47859566"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="47859566"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-mw2nam12on2055.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([40.107.244.55])
 by mgamail.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 May
 2025 02:22:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YeYHVWkPAV+4/pPBOMG8pos82S6cX/Sinlh20TNfV9Dqwo9nsvTu1mj1L6YIikk0sYzPcNP8jtdO4WR3hWy1CwbJbB5OQjNxHhTW5FrAqZE3hhxZ7GChD+5P44bmS6mz+DdwkJdxyKwSNh4jNa8obYgz9EqAnSwmph6mkS282TKaItQVsPvTyCdOkIhQPNQQi0EadhM60G5xmZklHDdF6BrdjCrnaLRflZy/ij6ohnnMBtRd/wSofskxrnC8e6csIdgqEMmh7ia00j17rRhooWRcdcjsPB8GUcI4tNceymukoG6IZ4kSRJoTmxG4GQAjsPcdQD/q45l5qq7YGxX0GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wGkKGF80OUGsO4c8VC7wNh9nxFRGJIl6sVDaL1nnDgw=;
 b=bc8aaUMgOL1fVqZkc7IeuSAYgv1NtxTLHrrYQFGwCAmPJucZOFY9nVHNSy8U8w12sBg6ad/5jvHYlJAVRuOTcxF1HjdJR4JgYknBU8pln9UBIGHQoqTc/ijscLU7FgbNujdNxRqfPT/rX6OuGuGk1F3P79E5WRXnyg4ZKRXtBi3UkT3cfdn2qZ43zPvDUKcRTxDoewZv+UivaSG6c39XymFLbOLO6sn+lgeHkVyvJBih/OlTrG4i4hHbkmzuncwEc+txCtZI9XEUMuBMHvijKztBmACoeZYdqB0pxSxjDm2cXbhEblkFyH0lC0roxJOFgKjSdGYphIKYIwQZcuueqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGkKGF80OUGsO4c8VC7wNh9nxFRGJIl6sVDaL1nnDgw=;
 b=rX/oC+DXI6PfbwQJXC57e/HOueUq2rEnl9ogcsIh4s7XamDSJ8Zc7iE5kTfvQuDDyPwm2zl5QRBN6wPi2P234L+ztINoH9bRyXdXpVihkiiONOIHuCiuFrP8ILfFEk7AsYvQPly3dpXUO/2u8RBa+1IF8qVq5Oag9b53mNa+rs4=
Received: from CH0PR13CA0024.namprd13.prod.outlook.com (2603:10b6:610:b1::29)
 by MW4PR12MB6876.namprd12.prod.outlook.com (2603:10b6:303:208::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Fri, 9 May
 2025 09:22:29 +0000
Received: from CH1PEPF0000AD75.namprd04.prod.outlook.com
 (2603:10b6:610:b1:cafe::67) by CH0PR13CA0024.outlook.office365.com
 (2603:10b6:610:b1::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8722.20 via Frontend Transport; Fri,
 9 May 2025 09:22:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CH1PEPF0000AD75.mail.protection.outlook.com (10.167.244.54) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8722.18 via Frontend Transport; Fri, 9 May 2025 09:22:28 +0000
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Fri, 9 May
 2025 04:22:28 -0500
Received: from localhost.localdomain (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2507.39 via Frontend
 Transport; Fri, 9 May 2025 04:22:25 -0500
From: Wayne Lin <Wayne.Lin@amd.com>
To: <dri-devel@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jani.nikula@intel.com>,
 <mario.limonciello@amd.com>, <harry.wentland@amd.com>, Wayne Lin
 <Wayne.Lin@amd.com>, <stable@vger.kernel.org>
Subject: [PATCH v2] drm/dp: Fix Write_Status_Update_Request AUX request format
Date: Fri, 9 May 2025 17:22:18 +0800
Message-ID: <20250509092218.805771-1-Wayne.Lin@amd.com>
X-Mailer: git-send-email 2.43.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 1
X-MS-TrafficTypeDiagnostic: CH1PEPF0000AD75:EE_|MW4PR12MB6876:EE_|BN3PEPF0000B36E:EE_|DM3PPF90FB92BE6:EE_|PH7PR11MB6428:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fa08b40-98f3-457b-4fbe-08dd8edb0b38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
 ARA:13230040|1800799024|376014|82310400026|36860700013; 
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?dno2aXF3ekh5TTROYWlHU3lGU3hObGtZRzVqYUJCaDZrMURGOVAzbnpYdHBl?=
 =?utf-8?B?aS9jcUFmL2s0eEs4L01qUGx5SGFHMnJLckloc2huZjVlS3hIUjFSbUlhT3M3?=
 =?utf-8?B?Qi9mS3Nrd1NnUW1HdmVKdDYxVEFSQ3lwODJWSkdHWXMxWlRuL056VStxQW9h?=
 =?utf-8?B?cGppZFkrOTlvWGhlaUlDTHBtTFNSaXd6N09MK1BkQTN3MzIyRGlyQmZiaWRn?=
 =?utf-8?B?RVdQTFdCTTlzV0MzY3BMdWlWdDJvTFZEaElyRzI4c2R1ZC9MbGkvcm1OYXRh?=
 =?utf-8?B?akdLWlhUTU0yY1d1eTdZS0Z5QTMvMkcwM2U0R2FkLzhyREUzZ0ZybDJ5amdX?=
 =?utf-8?B?L3F1LzI2d1NaK0ZqV3gzQ0FtQXF5MC9wb1gzNTFUbGpPaGVBME5YeUdRaG1Z?=
 =?utf-8?B?Ump6c1ByQ1RlN2hlUDFrRnFOR3NmMk9SNlV6OGw1QVlld0FEL1plYXBNbEJp?=
 =?utf-8?B?dGpzWjMzdDYvZjFKU0ZBd0VETUhMTXJjdkhrWHZaUXh0a1JQcVdSZFpOcUI2?=
 =?utf-8?B?N3lUOW9VbFFueEdCdm13QWl5dCtqYXc5eVdxMmZQTDEyeXI3SWdKQlJRbmRt?=
 =?utf-8?B?Tmo5UEpRa2FMelc0SjNxMGI4bzk5UzBzNG5OcVZyZzJoUDhRa1lVZkgvM1kz?=
 =?utf-8?B?Z1ZTV1NhREpRY3hFUXpUelZBeDlzTFFtMGZFV0laQWpSWk5GQy84SnJMV2wx?=
 =?utf-8?B?eDBFeEMvd1BZeFJNVTREUHkzNXFvZDhuQlJDVW5sdmtDZmdMbmU3aGZlYXJl?=
 =?utf-8?B?bllZd1JUcTI3REVudlNNV3BwT25YeGQ4eG1Eb0pwd3R1YmQ1ZlJkUTZucVFJ?=
 =?utf-8?B?RDdtSjhOVGZSYnFrWEVvNDBSS3VvNUJLU1VKTjJxOEVUSGNoVGRPcmt0djdE?=
 =?utf-8?B?dElHY2tscGpiYmZGRjUycTlma0VhM1VPMnhNbFI2Zy9zSVcyTEZheWhKZ3pV?=
 =?utf-8?B?azhXdzJOSUF4L1d0eFF4b0lDUmsrb3dnT1F2Ulp1Z0dxWmRuLy95Vm1wZStT?=
 =?utf-8?B?OUZHOVdvYysyaDJLRi80S3RidzZjUzRDeFFIWDJWdUg2bVJsWEVXUGJZRldC?=
 =?utf-8?B?TUJGYzE4OHI1WFpGYXByNkR5dnZ2QU04MEF5cXZNUnhPTjJKZGNwNTBzaTB1?=
 =?utf-8?B?NVpGaWRXQU0vSG1oMVF0TjdrVWJQcWtRSDh2OWZFWUk5cjdvR0laNFhmZGdw?=
 =?utf-8?B?SjJhNHpFMklaY0pIOFA0b2lXN096VTZ4WFpxdmdNVEtURFRCT0Jwd3ppZ1lH?=
 =?utf-8?B?SUlKWGs2eGZxOXBMNzBYL1lmWG4rZmRobXJHSEZBOGZ4VHY4U0UrT0sweFRP?=
 =?utf-8?B?YTNNbEc5Zmx0SHJnc3ppMWR3V2Jud3h6b1RDNXphQ0tkblNaZ3VNTVpxcnJT?=
 =?utf-8?B?aExjVlQyNzFjTk5JWEg5NGpLY2RTQzFuc1J3dHFKSzdUSjhRazRkUHdpZlFJ?=
 =?utf-8?B?ZmVMYndJU3FSZ0V3anRRMzhmL2pRRThPVjNqNFBUR0NqZHNHMm1yM21TVUdF?=
 =?utf-8?B?a1ZpMlUwNlkxK0NrVEtkZ3ZHRkVGNnU1NzhtTUhURk5RNXZDRHJyKzhyTlpw?=
 =?utf-8?B?R1ZlRGI4MUJZeU94TXRpWndQcWhhQjdyWWdDRUZVN3BoZ29qc3FUcytaT1pB?=
 =?utf-8?B?M2ZmSlEvQnNsazBUMmlpU3A1V1UwaEFMSmg3a01wczJuWnEzUmdob1Q5Snlq?=
 =?utf-8?B?RTB0TFd5eXVvY0lxYW0zcmNhSERnMHovK1lYRDZQWTlneDJ5d2hkY3Nod2VB?=
 =?utf-8?B?UDg3NVdrWlRNZFk4aWJYY1NUREdOdzJWN0llNWdCdXgwdWZmQy9PcjZhQTlo?=
 =?utf-8?B?ZFp4aThXcnBXRG02akc0cW03Q1EwNkNoNHJ2RWk1RUZlb01VdGIwZzgxaVV1?=
 =?utf-8?B?bzh4ZGN4NUlSbVo2QXdUa2JSU2lYclg4b2RRSmcvWFRNUUlLcUZqZnNtdU9u?=
 =?utf-8?B?Nk9DSFhHUy9vVk4rZmtwU3VPQWFjblduZlhWSUYvVUpXTkZLYVJOVi9zaFpm?=
 =?utf-8?B?ZmtlaUp2c1I4TWV2ekp1Y0Q3K3FQU2FEUEZNcGtQdzRrKy96MlZnd3hmMjZU?=
 =?utf-8?Q?2K0olW?=
X-Forefront-Antispam-Report-Untrusted: CIP:165.204.84.17; CTRY:US; LANG:en;
 SCL:1; SRV:; IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com;
 PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(82310400026)(36860700013); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6876
X-OrganizationHeadersPreserved: ORSMSX901.amr.corp.intel.com
X-MS-Exchange-Organization-ExpirationStartTime: 09 May 2025 09:22:39.3700 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 5fa08b40-98f3-457b-4fbe-08dd8edb0b38
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-CrossPremisesHeadersPromoted: BN3PEPF0000B36E.namprd21.prod.outlook.com
X-CrossPremisesHeadersFiltered: BN3PEPF0000B36E.namprd21.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: BN3PEPF0000B36E.namprd21.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Exchange-Organization-AuthSource: ORSMSX902.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: intel.onmicrosoft.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5f655071-0815-4046-26f2-08dd8edb04e5
X-MS-Exchange-Organization-SCL: 1
X-Microsoft-Antispam: BCL:4;
 ARA:13230040|35042699022|82310400026|12012899012|7053199007; 
X-Forefront-Antispam-Report: CIP:134.134.137.100; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:edgegateway.intel.com; PTR:edgegateway.intel.com;
 CAT:NONE; SFS:(13230040)(35042699022)(82310400026)(12012899012)(7053199007);
 DIR:INB; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 09:22:39.1555 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa08b40-98f3-457b-4fbe-08dd8edb0b38
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=46c98d88-e344-4ed4-8496-4ed7712e255d; Ip=[134.134.137.100];
 Helo=[edgegateway.intel.com]
X-MS-Exchange-CrossTenant-AuthSource: ORSMSX902.amr.corp.intel.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF90FB92BE6
X-MS-Exchange-Transport-EndToEndLatency: 00:00:03.1267199
X-MS-Exchange-Processed-By-BccFoldering: 15.20.8699.022
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; auth:0; dest:I;
 ENG:(910005)(944506478)(944626604)(920097)(930097)(140003); 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZitIMVlMYUpsclI4U3VjaUgvVDgrUldweWVSWW9MZFFHOFJPVFR2UU1vVzhM?=
 =?utf-8?B?Vjd3L1o2MlNlWjhVTVRleXV0OWdoQU9oMnl2eWxsNjdNVmZ2VU00RnBSc2g1?=
 =?utf-8?B?dER0NDMzbExoVmIra0tuVlR0bWVmeVlGVE82UlZvamdHV2pkWDVnM2tqOTZG?=
 =?utf-8?B?K25zOUM1QS9pWU40bXlacWRoUEFPdUJGVjlyV2FWTTZXWTNSVjRyTEVmTno2?=
 =?utf-8?B?N1NIbXJSQUt6VGcveFc1RGcvRlRpdGEvditPZnp3OXFXcm8zYlc3Q28ramVk?=
 =?utf-8?B?S21tRDhzM2srUElFUFE5MmlOWUMyTUVBb3RUOUl5RUduMWNLampoYll3c0o1?=
 =?utf-8?B?S2NWRnJzVW0wbU45MlQ2YzNGZFV0UzRxSnprY0pwejJYV1ozbmRhNmorU05v?=
 =?utf-8?B?WDNUWm5abnU5NHZMZE1xZ1FIOEMzYlBneEk3RE1FZ0M1V1dORUdxWU85NUFF?=
 =?utf-8?B?cXd3aERtbnlDRE5UaThPaVhoZEplL0VlVk9RLzAvQWg2U1p5cWJpUEZTQUhU?=
 =?utf-8?B?d1U3dGRQUm0wUnVLVW90VUVyaUJaN1hDMkNjbTBQTWcvQVNzck5XUFA5cTBL?=
 =?utf-8?B?MGJLQ0krQTR0bXhLK0FlSHhsY0V1SW9ZTjNoOStiYzV5YjlEWFhKbHlNVHN1?=
 =?utf-8?B?YUhZd0FsZkhYME1FV2paVjlXaHRBcnRLZzlPUlJpWHNzamNDeVNYZjVzcmZ1?=
 =?utf-8?B?emRTR1hpVGxGdkdpaHBOb092K1BhRzdiaHo3Rk50ZzlDdEwzdkxHbkl0bU9R?=
 =?utf-8?B?aFIwSjRmWjRlenJHeEJsdXJyeFBrc1RNa0hWV2p0bUgrNHJmQ3Z6cVFuRjM5?=
 =?utf-8?B?SjJXUkZtMjV2VXlHQnJ2Q2lzUTVyVkFpTW04VE01NUhERGl1VFlJeEdDUXh4?=
 =?utf-8?B?VGkzWnN1d1pZWXZKTUZHSlZ1MFcyRHpRWHFRL053YWxuNGNLYWZrMzBuUmJ0?=
 =?utf-8?B?MUQ5R3dYNlNBWXVpV0NZWGF2bjJzUXZKNDk1bVIzMTNJVGpQbUg3Y3ZBRXVl?=
 =?utf-8?B?Ym84MmFJMmx3d1RDbWxQYmh1d1dGeG5zOUhuOWJtQXdkOXlOa09zby95Zi9Y?=
 =?utf-8?B?VkdaZHYwM3dkZXRrM0NPK2ppbzl2dGdqZTNRZzlxZms2V1AzcVQwcXZPTEtV?=
 =?utf-8?B?cE01cmx6VEJ1M1F0S1U3eC9vV1RUWFN4SDhWVGhFN0xpN3MrZW5jNVljRWRj?=
 =?utf-8?B?ZEcxakpEelNSaVpKZU9VczNZcTZuUWovQ09GakgrN205dGlGLzR6L004Mk5w?=
 =?utf-8?B?alFwN09DZHJSVFF5ckNlS245T2ZxbXN5bEZuWEZpcmoxbTVGdEtmVHA2WDcr?=
 =?utf-8?B?UVVaTmhlbm5GUUFHUEVTbVJINlBkbllTZHpuZmVia2ZYcDlUS3A1bnJpY1Ro?=
 =?utf-8?B?ckxBZCtSRGZqREtUNjJEdDdrQklCTEpJN2xkb054TW1jTG5uOGdHZmpnRkV1?=
 =?utf-8?B?NFRKSndFa2xhbElsOEtSdU5sQm1vd0pNK3NkTWd1WHZLbkxPdngyS3hhdDZZ?=
 =?utf-8?B?KzdzY2lJdjNEaWQ2dzNZWEJ1ZnlTMThCK0dMdkRMTWdiUXpRSzF1ZUtGdDdR?=
 =?utf-8?B?Y01DcU8zWFBpd0NXUlhlZk1ldzZQbHkrNnhvcmIydUJhempYdzFWY0EyUTg5?=
 =?utf-8?B?b2c1bnl1Yjd2L2FsSzBrZUYzcEdjWjgrTlgxV0cycU9CWnpuODVZTjM4R0tn?=
 =?utf-8?B?NG9MZDFiaWdub011bzNaa3F5QWpSZjVzZ1Ztd2JZT3lPOWVDYkZ4U0lxT3Jh?=
 =?utf-8?B?NVpaWHVOWlpFOEkzQURPeU9LNWUyV0xNMGJEOWYzTDQ5QUNCcTN1eXJmNDlF?=
 =?utf-8?B?TkZMNUZsbEhzaTNvTkFKNTROZ3pHUHJub0Z3L0JWQktDZ3NpQmJXZkZqRXl5?=
 =?utf-8?B?am9YY1N2Y3ZsR2VHZk4xbEROaVFTVGlNVmV2QUpwS2FNeEVWTUh1YkxiQ25h?=
 =?utf-8?B?b29uSUNUL0hlY1JmSmIyejJMampRZmpXSnlXSEVGZ2Y2UEl5U1A5UUVBVkVk?=
 =?utf-8?B?ZE81bFcvS1Urdlc3UTdxYjR0c2RTYUUxOHg4NXBjTzRqTGM2dzR0bW9tUnNz?=
 =?utf-8?B?dm00RjVGa2lSSXlQMTJicjNwUVVweGxwcjZLR204ZkhhMi9GcU9wbUxnVFlC?=
 =?utf-8?B?V0dWaS8xeGthblNXZHgxOFNiaDIxRVNlRzhhRkxLb09tR0syWVRmU2lwbzM5?=
 =?utf-8?B?emVFNFg3a1pHTk9TSXdTaGo2Q25zZmsvellOWEpaeXlZYzNoQUNRck1pSTVG?=
 =?utf-8?B?UnBmK1RFN29tR09uWmJiQ1Nnb2RNeG56OW5hU1RMaVoxQU1xMmZGK3JRdFIz?=
 =?utf-8?B?b3A0dzQzeFZRZnVlRWx3TTZXaVUvWDBDQWpWMndiWnBIekVLdjA5Z3czUDc4?=
 =?utf-8?B?Rmp3N1d4L1AwblJUK0JnUXNDeE5iMXdiRzRWdDV4Q2ZQaEJka3h5ZVBiWWJ4?=
 =?utf-8?B?VHZVUHFCNWxvbWRONWNpcFZQRFNPNWlCMXhjdGlYclJBR0p4Z1o5M2RSQkZK?=
 =?utf-8?B?RFNvMWxjOFV4TmNmUnFqM2kvY09BU3l6RzRPKzhFSndMQTBsTUJrQ2l0d3Jx?=
 =?utf-8?B?eDlUWXhlUlVBVHlkZlZmTGtGRjN3ZC83OTRQOTFFUlg3b2lXVGJreG5CZ1N1?=
 =?utf-8?B?S2xhNWxxem1yZ2hkcVJ0Z2xCaHcvR29MVFhsUlRQL0R1VDloMy83VHRBRUI2?=
 =?utf-8?B?MFNEaDRkSERnU2VoVFQ5OCtTTnpPWDBpUzZyK2YxMjg1c2JsVks0cmVnTEVa?=
 =?utf-8?B?T3l3ekw1N2NabEhYQjRXTXl5QWJUYmw0Nk9FZDZodm5DQlRFMytqaHhwb3VQ?=
 =?utf-8?B?UGRaZ243QVVWdEtWbnRBZloxaWNiSy9JZU55UGNkbk1JbnhUbURxenRtaWtS?=
 =?utf-8?B?NUg5cDFTZ0ljWWNaV00xMkJRb005Q0tKMmR4RThRcmxTTjE1Mmpzdk5IK2Fl?=
 =?utf-8?Q?Ix8wv60q/bFPP4wF?=
MIME-Version: 1.0
X-TUID: x5ROGQN0B156
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

[Why]
Notice AUX request format of I2C-over-AUX with
Write_Status_Update_Request flag set is incorrect. It should
be address only request without length and data like:
"SYNC->COM3:0 (= 0110)|0000-> 0000|0000->
0|7-bit I2C address (the same as the last)-> STOP->".

[How]
Refer to DP v2.1 Table 2-178, correct the
Write_Status_Update_Request to be address only request.

Note that we might receive 0 returned by aux->transfer() when
receive reply I2C_ACK|AUX_ACK of Write_Status_Update_Request
transaction. Which indicating all data bytes get written.
We should avoid to return 0 bytes get transferred under this
case.

V2:
- Add checking condition before restoring msg->buffer and
  msg->size. (Limonciello Mario)
- Revise unclear comment to appropriately describe the idea.
  (Jani Nikula)

Fixes: 68ec2a2a2481 ("drm/dp: Use I2C_WRITE_STATUS_UPDATE to drain partial I2C_WRITE requests")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Mario Limonciello <mario.limonciello@amd.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: stable@vger.kernel.org
Signed-off-by: Wayne Lin <Wayne.Lin@amd.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 54 +++++++++++++++++++++----
 1 file changed, 47 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index 57828f2b7b5a..c71a1395a2d6 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -1857,6 +1857,12 @@ static u32 drm_dp_i2c_functionality(struct i2c_adapter *adapter)
 	       I2C_FUNC_10BIT_ADDR;
 }
 
+static inline bool
+drm_dp_i2c_msg_is_write_status_update(struct drm_dp_aux_msg *msg)
+{
+	return ((msg->request & ~DP_AUX_I2C_MOT) == DP_AUX_I2C_WRITE_STATUS_UPDATE);
+}
+
 static void drm_dp_i2c_msg_write_status_update(struct drm_dp_aux_msg *msg)
 {
 	/*
@@ -1965,6 +1971,7 @@ MODULE_PARM_DESC(dp_aux_i2c_speed_khz,
 static int drm_dp_i2c_do_msg(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 {
 	unsigned int retry, defer_i2c;
+	struct drm_dp_aux_msg orig_msg = *msg;
 	int ret;
 	/*
 	 * DP1.2 sections 2.7.7.1.5.6.1 and 2.7.7.1.6.6.1: A DP Source device
@@ -1976,6 +1983,12 @@ static int drm_dp_i2c_do_msg(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 	int max_retries = max(7, drm_dp_i2c_retry_count(msg, dp_aux_i2c_speed_khz));
 
 	for (retry = 0, defer_i2c = 0; retry < (max_retries + defer_i2c); retry++) {
+		if (drm_dp_i2c_msg_is_write_status_update(msg)) {
+			/* Address only transaction */
+			msg->buffer = NULL;
+			msg->size = 0;
+		}
+
 		ret = aux->transfer(aux, msg);
 		if (ret < 0) {
 			if (ret == -EBUSY)
@@ -1993,7 +2006,7 @@ static int drm_dp_i2c_do_msg(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 			else
 				drm_dbg_kms(aux->drm_dev, "%s: transaction failed: %d\n",
 					    aux->name, ret);
-			return ret;
+			goto out;
 		}
 
 
@@ -2008,7 +2021,8 @@ static int drm_dp_i2c_do_msg(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		case DP_AUX_NATIVE_REPLY_NACK:
 			drm_dbg_kms(aux->drm_dev, "%s: native nack (result=%d, size=%zu)\n",
 				    aux->name, ret, msg->size);
-			return -EREMOTEIO;
+			ret = -EREMOTEIO;
+			goto out;
 
 		case DP_AUX_NATIVE_REPLY_DEFER:
 			drm_dbg_kms(aux->drm_dev, "%s: native defer\n", aux->name);
@@ -2027,24 +2041,41 @@ static int drm_dp_i2c_do_msg(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		default:
 			drm_err(aux->drm_dev, "%s: invalid native reply %#04x\n",
 				aux->name, msg->reply);
-			return -EREMOTEIO;
+			ret = -EREMOTEIO;
+			goto out;
 		}
 
 		switch (msg->reply & DP_AUX_I2C_REPLY_MASK) {
 		case DP_AUX_I2C_REPLY_ACK:
+			/*
+			 * When DPTx sets Write_Status_Update_Request flag to
+			 * ask DPRx for the write status, the AUX reply from
+			 * DPRx will be I2C_ACK|AUX_ACK if I2C write request
+			 * completes successfully. Such AUX transaction is for
+			 * status checking only, so no new data is written by
+			 * aux->transfer(). In this case, here we have to
+			 * report all original data get written. Otherwise,
+			 * drm_dp_i2c_drain_msg() takes returned value 0 as
+			 * an error.
+			 */
+			if (drm_dp_i2c_msg_is_write_status_update(msg) && ret == 0)
+				ret = orig_msg.size;
+
 			/*
 			 * Both native ACK and I2C ACK replies received. We
 			 * can assume the transfer was successful.
 			 */
 			if (ret != msg->size)
 				drm_dp_i2c_msg_write_status_update(msg);
-			return ret;
+
+			goto out;
 
 		case DP_AUX_I2C_REPLY_NACK:
 			drm_dbg_kms(aux->drm_dev, "%s: I2C nack (result=%d, size=%zu)\n",
 				    aux->name, ret, msg->size);
 			aux->i2c_nack_count++;
-			return -EREMOTEIO;
+			ret = -EREMOTEIO;
+			goto out;
 
 		case DP_AUX_I2C_REPLY_DEFER:
 			drm_dbg_kms(aux->drm_dev, "%s: I2C defer\n", aux->name);
@@ -2063,12 +2094,21 @@ static int drm_dp_i2c_do_msg(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		default:
 			drm_err(aux->drm_dev, "%s: invalid I2C reply %#04x\n",
 				aux->name, msg->reply);
-			return -EREMOTEIO;
+			ret = -EREMOTEIO;
+			goto out;
 		}
 	}
 
 	drm_dbg_kms(aux->drm_dev, "%s: Too many retries, giving up\n", aux->name);
-	return -EREMOTEIO;
+	ret = -EREMOTEIO;
+out:
+	/* In case we change original msg by Write_Status_Update case*/
+	if (drm_dp_i2c_msg_is_write_status_update(msg)) {
+		msg->buffer = orig_msg.buffer;
+		msg->size = orig_msg.size;
+	}
+
+	return ret;
 }
 
 static void drm_dp_i2c_msg_set_request(struct drm_dp_aux_msg *msg,
-- 
2.43.0

