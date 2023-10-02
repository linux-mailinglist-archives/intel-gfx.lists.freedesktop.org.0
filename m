Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F677B69A0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 14:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61BDD10E0E3;
	Tue,  3 Oct 2023 12:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8820110E255
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 21:45:32 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-406618d080eso2485615e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Oct 2023 14:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20230601.gappssmtp.com; s=20230601; t=1696283130;
 x=1696887930; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3dA79LkNYU7asBXwt/uQxW8bheOGwedQNE5Z+nFIVT0=;
 b=td5jLO3chvVCW90psAlNyX+PT3g9PLmhOtQkWq/qD0Ou3gAZJMBO8aozFC9d/r0xth
 ourlryNG/CaG5POD78+BfWOsH5jVScNxtW4Na/126ueDEgdXvIzggtIvc+h3BOoIzuwr
 MDbaa57mQXzMaZ5AWEVF8bNNFPKkekxdne3BHaWvR4DKBVplHnr9Z66/ddafSq8KleQb
 trFRgkm+Z0uPFAVqCTLdNdFFkql7ZjJma1rv6p43yjW3EN6HKPtK1PWoNbNpp64O1vg7
 EVBg23IdVf9I9o8xt8iYew3pgGHElgICvO8hU1Xl/qaGsZzM8k0O8Ike49++9pfN0+XZ
 Hxww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696283130; x=1696887930;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3dA79LkNYU7asBXwt/uQxW8bheOGwedQNE5Z+nFIVT0=;
 b=nTk/sKQlwOuuX5OiXxQ0QlqT1Sto/W/v0BbnFeDLnkwrX8DOrzBGQAUve+dLqCSw3e
 b33ZQZcRLOiEUCJZtucANfCdAhQJnzXcrWvFV5QX7MBl/FJSEQ5BmoDI5rnOwgv0vyUo
 EI25bP3soczIGvjZcK2hkn+04ebQgTHLnrrIZVY4Q2zJh+EC7N8iuSe5qrlA6eBY8f36
 Vt+phXU/EH00PXX52gsSYZEYOCYlRBudgIzS8/0r69wWKJLXKwFP5IGOQ/+3Sfg/DlFt
 AvfbDJzIYfsEv5XTCGTHAxA80amI30Fnru1IEzV8QnTD9432Ch6Y9NsriUjltT3H0D78
 90WQ==
X-Gm-Message-State: AOJu0YxY5qwX7V/5NKci93Hs3Ko/kXzKEk3vZNaqjjijxuWxWJ733eRy
 Bn6AH7p8GZfEHwaUJyfhHpGYtw==
X-Google-Smtp-Source: AGHT+IFQqDHrxS5nLVVcz3uYz3zBoh8PRAUblObfkXMiu+127hGE3d4cKV4jcsCeAwYclm/ssvuz7g==
X-Received: by 2002:a1c:6a05:0:b0:404:757e:c5ba with SMTP id
 f5-20020a1c6a05000000b00404757ec5bamr10282866wmc.26.1696283130281; 
 Mon, 02 Oct 2023 14:45:30 -0700 (PDT)
Received: from localhost.localdomain
 (3.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16::3]) by smtp.gmail.com with ESMTPSA id
 a11-20020a05600c2d4b00b004065daba6casm7974630wmg.46.2023.10.02.14.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 14:45:29 -0700 (PDT)
From: Phillip Potter <phil@philpotter.co.uk>
To: devnull+j.granados.samsung.com@kernel.org
Date: Mon,  2 Oct 2023 22:45:28 +0100
Message-ID: <20231002214528.15529-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-1-02dd0d46f71e@samsung.com>
References: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-1-02dd0d46f71e@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 03 Oct 2023 12:58:08 +0000
Subject: Re: [Intel-gfx] [PATCH v2 01/15] cdrom: Remove now superfluous
 sentinel element from ctl_table array
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
Cc: j.granados@samsung.com, Jason@zx2c4.com, rafael@kernel.org,
 clemens@ladisch.de, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, phil@philpotter.co.uk, song@kernel.org,
 edumazet@google.com, kys@microsoft.com, jirislaby@kernel.org,
 russell.h.weight@intel.com, wei.liu@kernel.org, sstabellini@kernel.org,
 minyard@acm.org, leon@kernel.org, linux-rdma@vger.kernel.org,
 airlied@gmail.com, steve.wahl@hpe.com, decui@microsoft.com,
 willy@infradead.org, jgg@ziepe.ca, linux-serial@vger.kernel.org,
 dgilbert@interlog.com, kuba@kernel.org, pabeni@redhat.com,
 intel-gfx@lists.freedesktop.org, keescook@chromium.org, arnd@arndb.de,
 haiyangz@microsoft.com, josh@joshtriplett.org, linux-raid@vger.kernel.org,
 rodrigo.vivi@intel.com, xen-devel@lists.xenproject.org,
 openipmi-developer@lists.sourceforge.net, jgross@suse.com, tytso@mit.edu,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 gregkh@linuxfoundation.org, dsahern@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, sudipm.mukherjee@gmail.com,
 oleksandr_tyshchenko@epam.com, mcgrof@kernel.org, robinmholt@gmail.com,
 daniel@ffwll.ch, netdev@vger.kernel.org, jejb@linux.ibm.com,
 davem@davemloft.net
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Joel Granados <j.granados@samsung.com>
>
> This commit comes at the tail end of a greater effort to remove the
> empty elements at the end of the ctl_table arrays (sentinels) which
> will reduce the overall build time size of the kernel and run time
> memory bloat by ~64 bytes per sentinel (further information Link :
> https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)
>
> Remove sentinel element from cdrom_table
>
> Signed-off-by: Joel Granados <j.granados@samsung.com>
> ---
>  drivers/cdrom/cdrom.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/cdrom/cdrom.c b/drivers/cdrom/cdrom.c
> index cc2839805983..a5e07270e0d4 100644
> --- a/drivers/cdrom/cdrom.c
> +++ b/drivers/cdrom/cdrom.c
> @@ -3655,7 +3655,6 @@ static struct ctl_table cdrom_table[] = {
>  		.mode		= 0644,
>  		.proc_handler	= cdrom_sysctl_handler
>  	},
> -	{ }
>  };
>  static struct ctl_table_header *cdrom_sysctl_header;
>
>
> -- 
> 2.30.2


Hi Joel,

Looks good to me, many thanks. I'll send on for inclusion.

Reviewed-by: Phillip Potter <phil@philpotter.co.uk>

Regards,
Phil
