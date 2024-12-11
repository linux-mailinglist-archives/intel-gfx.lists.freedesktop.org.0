Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6F69ED309
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 18:04:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF1DF10E3F2;
	Wed, 11 Dec 2024 17:03:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZpXvP8NG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C420D10E3F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 17:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733936638; x=1765472638;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=U1V13+IXrC0OlQ0ksHl0HsoiHF2WnH13mCaBB5v7zFQ=;
 b=ZpXvP8NGUuFDZ7eXBV60gq53tG0Apx1buMohCvfStL8eB/j6qXC8cWLg
 7pDjbNifgmLEKc0EbbFTJx/98PRlRLwBxNERNbflBO26H3DdCs1evifC2
 38KmQGRtRc/Q5wm6cc0wq/tFYzkk8zEoKSPFoMUnatTSnFXEohDo+o7GB
 HQW7/Oh/QfT8CWecpGs30NVFpGiIo6TK5odWu/r3fvw8T/lPI73eF2oy4
 KBAjXloLf3egjdMkEdV7HbDsdQTYLXLIlME3GVujWS0wlq4CsCDJ5YkCS
 Am0yFC4kOZGayv37kaEWi7AidFNu9HLxvJcj07qmNNIZA78bL0xE3QXDW g==;
X-CSE-ConnectionGUID: NwRQvn/BTI2tp39Vf7t/Eg==
X-CSE-MsgGUID: cJWDmdrsSrqesL5z91kPxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="38108020"
X-IronPort-AV: E=Sophos;i="6.12,226,1728975600"; d="scan'208";a="38108020"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 09:03:58 -0800
X-CSE-ConnectionGUID: 6dBhUbMiQ6mrR7vnx4rHSA==
X-CSE-MsgGUID: mtpSt4rFTMuamJ6wQ47/Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133261167"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.110.33])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 09:03:57 -0800
Date: Wed, 11 Dec 2024 11:03:53 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com, 
 rodrigo.vivi@intel.com
Subject: Re: [core-for-CI] Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING
 with PROVE_LOCKING."
Message-ID: <4eumdizaltptocfqvkvxir7gjwfht2euha5josb5epagd4suwr@emdlfetgowi2>
References: <20241211121703.2890150-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20241211121703.2890150-1-luciano.coelho@intel.com>
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

On Wed, Dec 11, 2024 at 02:16:35PM +0200, Luca Coelho wrote:
>This reverts commit 560af5dc839eef08a273908f390cfefefb82aa04.
>
>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

I added some more context to the commit message and
pushed to topic/core-for-CI with Rodrigo's ack:

     81827bbe1d8b ("Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with PROVE_LOCKING."")

which should be available in drm-tip starting with

     drm-tip: 2024y-12m-11d-16h-58m-54s UTC integration manifest

thanks
Lucas De Marchi
