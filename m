Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F56067DFB5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 10:09:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E5610E435;
	Fri, 27 Jan 2023 09:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B512910E432;
 Fri, 27 Jan 2023 09:09:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1773861A3F;
 Fri, 27 Jan 2023 09:09:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0560DC433EF;
 Fri, 27 Jan 2023 09:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1674810574;
 bh=WC0BYw/Qv9foVaiPhUmnTiR19Ksff/YMcaULO7H9kHc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bLjC90ktmgleFygpPSNbPegnq9XlpHb4mSWSPDKrYPYsa+IlKKkts34MCddNqlZ3o
 ya4TTgPTxsTKxVvarvusjyjq8JdT5is4BJY/dM9ehWFNn3+Rr8l89LkaAPIwtljxk5
 /bDwsTorizAEMnIQNNQ1rz2uDhlNcK3cXjjH9mms=
Date: Fri, 27 Jan 2023 10:09:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y9OUy2Ygq2EBzdDV@kroah.com>
References: <20230125082637.118970-1-alan.previn.teres.alexis@intel.com>
 <20230125082637.118970-4-alan.previn.teres.alexis@intel.com>
 <Y9FmvUujJeijwZXi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9FmvUujJeijwZXi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 3/6] mei: clean pending read with vtag on
 bus
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 dri-devel@lists.freedesktop.org, Vivi@freedesktop.org,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 25, 2023 at 12:28:29PM -0500, Rodrigo Vivi wrote:
> 
> Greg, ack on getting these 3 mei patches merged through intel-gfx?

I only see 2 mei patches in this series, what am I missing?

thanks,

greg k-h
